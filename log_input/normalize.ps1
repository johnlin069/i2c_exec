$INPUT_PATH = ".\log_input"
$OUTPUT_PATH = ".\log_output"
$OUTPUT = Join-Path $OUTPUT_PATH "normalized_dump.txt"

# =====================================================
# Create Output File
# =====================================================

"" | Out-File $OUTPUT

# =====================================================
# Device Map (Mixed Dump Mode)
# =====================================================

$DEVICE_MAP = @{
    "15_60" = "DC-SCM"
    "5_30"  = "HPM CPLD1"
    "5_31"  = "HPM CPLD2"
    "6_30"  = "GLOBAL CPLD"
}

# =====================================================
# Find Logs
# =====================================================

$logFiles = Get-ChildItem $INPUT_PATH | Where-Object {
    ($_.Extension -in ".txt", ".log") -and
    ($_.Name -ne $OUTPUT)
}

foreach($file in $logFiles)
{
    Write-Host ""
    Write-Host ("Normalize : " + $file.Name) -ForegroundColor Green

    # =====================================================
    # Default State
    # =====================================================

    $currentSled = "SLED1"
    $currentDev  = $null

    # =====================================================
    # Detect SLED From Filename
    # =====================================================

    if($file.Name -match '^Sled2')
    {
        $currentSled = "SLED2"
    }

    # =====================================================
    # Detect Device From Filename
    # =====================================================

    if($file.Name -match 'scm')
    {
        $currentDev = "DC-SCM"

        Write-Host (
            "[Filename Detect] SLED=$currentSled DEVICE=$currentDev"
        ) -ForegroundColor Yellow
    }
    elseif($file.Name -match 'cpld1')
    {
        $currentDev = "HPM CPLD1"

        Write-Host (
            "[Filename Detect] SLED=$currentSled DEVICE=$currentDev"
        ) -ForegroundColor Yellow
    }
    elseif($file.Name -match 'cpld2')
    {
        $currentDev = "HPM CPLD2"

        Write-Host (
            "[Filename Detect] SLED=$currentSled DEVICE=$currentDev"
        ) -ForegroundColor Yellow
    }
    elseif($file.Name -match 'gbl')
    {
        $currentDev = "GLOBAL CPLD"

        Write-Host (
            "[Filename Detect] SLED=$currentSled DEVICE=$currentDev"
        ) -ForegroundColor Yellow
    }

    # =====================================================
    # Split File Mode
    # =====================================================

    if($null -ne $currentDev)
    {
        Add-Content $OUTPUT ""

        Add-Content $OUTPUT (
            "[SLED={0}][DEVICE={1}]" -f `
            $currentSled,
            $currentDev
        )
    }

    # =====================================================
    # Parse File
    # =====================================================

    Get-Content $file.FullName | ForEach-Object {

        $line = $_.Trim()

        # =====================================================
        # Mixed Dump : Detect SLED
        # =====================================================

        if($line -match '^Sled(\d+)')
        {
            $currentSled = "SLED" + $matches[1]

            Write-Host (
                "[SLED Detect] CURRENT=$currentSled"
            ) -ForegroundColor Magenta

            return
        }

        # =====================================================
        # Mixed Dump : Detect i2cdump
        # =====================================================

        if($line -match 'i2cdump')
        {
            $tokens = $line -split '\s+'

            $bus  = ""
            $addr = ""

            foreach($token in $tokens)
            {
                if(($token -match '^\d+$') -and ($bus -eq ""))
                {
                    $bus = $token
                }

                if($token -match '^0x[0-9a-fA-F]+$')
                {
                    $addr = $token.Replace("0x","").ToLower()
                }
            }

            $key = "${bus}_${addr}"

            if($DEVICE_MAP.ContainsKey($key))
            {
                $newDev = $DEVICE_MAP[$key]

                # =================================================
                # Device Changed
                # =================================================

                if($newDev -ne $currentDev)
                {
                    $currentDev = $newDev

                    Write-Host (
                        "[i2cdump Detect] BUS=$bus ADDR=0x$addr SLED=$currentSled DEVICE=$currentDev"
                    ) -ForegroundColor Cyan

                    Add-Content $OUTPUT ""

                    Add-Content $OUTPUT (
                        "[SLED={0}][DEVICE={1}]" -f `
                        $currentSled,
                        $currentDev
                    )
                }
            }

            return
        }

        # =====================================================
        # Register Data
        # =====================================================

        if(
            ($line -match '^[0-9a-fA-F]{2}:') -and
            ($null -ne $currentDev)
        )
        {
            Add-Content $OUTPUT $line
        }
    }
}

Write-Host ""
Write-Host "Normalize Done -> normalized_dump.txt" -ForegroundColor Green