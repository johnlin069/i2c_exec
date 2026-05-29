# =====================================================
# Global Dump Database
# =====================================================

$global:DumpData = @{}

# =====================================================
# Parse Normalized Dump
# =====================================================

function Parse-NormalizedDump($inputFile)
{
    #Write-Host ""
    #Write-Host "==========================================" -ForegroundColor Green
    #Write-Host "Parse Normalized Dump" -ForegroundColor Green
    #Write-Host "==========================================" -ForegroundColor Green

    if(-not (Test-Path $inputFile))
    {
        Write-Host ("Input file not found : " + $inputFile) -ForegroundColor Red
        return
    }

    # =====================================================
    # Default State
    # =====================================================

    $currentSled  = $null
    $currentDev   = $null

    # =====================================================
    # Read File
    # =====================================================

    Get-Content $inputFile | ForEach-Object {

        $line = $_.Trim()

        # =====================================================
        # Skip Empty
        # =====================================================

        if($line -eq "")
        {
            return
        }

        # =====================================================
        # Detect Header
        # Format:
        # [SLED=SLED1][DEVICE=DC-SCM]
        # =====================================================

        if($line -match '\[SLED=(.+?)\]\[DEVICE=(.+?)\]')
        {
            $currentSled = $matches[1]
            $currentDev  = $matches[2]

            #Write-Host ""
            #Write-Host (
            #    "[HEADER] SLED=$currentSled DEVICE=$currentDev"
            #) -ForegroundColor Cyan

            # =================================================
            # Create SLED
            # =================================================

            if(-not $DumpData.ContainsKey($currentSled))
            {
                $DumpData[$currentSled] = @{}
            }

            # =================================================
            # Create Device
            # =================================================

            if(-not $DumpData[$currentSled].ContainsKey($currentDev))
            {
                $DumpData[$currentSled][$currentDev] = @{}
            }

            return
        }

        # =====================================================
        # Parse Register Line
        # Format:
        # 00: xx xx xx xx
        # =====================================================

        if($line -match '^[0-9a-fA-F]{2}:')
        {
            # =================================================
            # Invalid State
            # =================================================

            if(
                ($null -eq $currentSled) -or
                ($null -eq $currentDev)
            )
            {
                Write-Host (
                    "[WARNING] Register line before header"
                ) -ForegroundColor Yellow

                return
            }

            $parts = $line -split '\s+'

            # =================================================
            # Invalid Register Line
            # =================================================

            if($parts.Count -lt 17)
            {
                Write-Host (
                    "[WARNING] Invalid register line : " + $line
                ) -ForegroundColor Yellow

                return
            }

            # =================================================
            # Base Address
            # =================================================

            $baseAddr = [Convert]::ToInt32(
                $parts[0].Replace(":",""),
                16
            )

            # =================================================
            # Parse Registers
            # =================================================

            for($i=1; $i -le 16; $i++)
            {
                if($parts[$i] -match '^[0-9a-fA-F]{2}$')
                {
                    $regAddr = $baseAddr + ($i-1)

                    $value = [Convert]::ToInt32(
                        $parts[$i],
                        16
                    )

                    $DumpData[$currentSled][$currentDev][$regAddr] = $value
                }
            }
        }
    }

    #Write-Host ""
    #Write-Host "==========================================" -ForegroundColor Green
    #Write-Host "Parse Done" -ForegroundColor Green
    #Write-Host "==========================================" -ForegroundColor Green
}

