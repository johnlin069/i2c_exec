# =====================================================
# Compare SLED1 / SLED2
# =====================================================

function Compare-All
{
    Write-Host ""
    Write-Host "==========================================" -ForegroundColor Green
    Write-Host "Compare SLED1 / SLED2" -ForegroundColor Green
    Write-Host "==========================================" -ForegroundColor Green

    # =================================================
    # Check SLED
    # =================================================

    if(
        (-not $DumpData.ContainsKey("SLED1")) -or
        (-not $DumpData.ContainsKey("SLED2"))
    )
    {
        Write-Host "[ERROR] Need SLED1 and SLED2" -ForegroundColor Red
        return
    }

    # =================================================
    # Compare Device
    # =================================================

    foreach($device in $DumpData["SLED1"].Keys)
    {
        if(-not $DumpData["SLED2"].ContainsKey($device))
        {
            continue
        }

        if(-not $REGMAP.ContainsKey($device))
        {
            continue
        }

        $regdb = $REGMAP[$device]

        $deviceFail = $false
        $deviceOutput = @()

        # =============================================
        # Compare Register
        # =============================================

        foreach($addr in ($regdb.Keys | Sort-Object))
        {
            if(
                (-not $DumpData["SLED1"][$device].ContainsKey($addr)) -or
                (-not $DumpData["SLED2"][$device].ContainsKey($addr))
            )
            {
                continue
            }

            $reg1 = $DumpData["SLED1"][$device][$addr]
            $reg2 = $DumpData["SLED2"][$device][$addr]

            $regInfo = $regdb[$addr]

            foreach($field in $regInfo.Fields)
            {
                $msb = $field.MSB
                $lsb = $field.LSB

                # =====================================
                # Extract Field
                # =====================================

                $width = $msb - $lsb + 1
                $mask  = ((1 -shl $width) - 1)

                $v1 = ($reg1 -shr $lsb) -band $mask
                $v2 = ($reg2 -shr $lsb) -band $mask

                # =====================================
                # Compare
                # =====================================

                if($v1 -ne $v2)
                {
                    $deviceFail = $true

                    $deviceOutput += ""
                    $deviceOutput += (
                        ("REG [0x{0:X2}] : {1}") -f
                        $addr,
                        $regInfo.Name
                    )

                    $deviceOutput += (
                        ("    [{0}:{1}] {2}") -f
                        $msb,
                        $lsb,
                        $field.Name
                    )

                    $deviceOutput += (
                        "        SLED1 = " + $v1
                    )

                    $deviceOutput += (
                        "        SLED2 = " + $v2
                    )

                    $deviceOutput += (
                        "        [FAIL]"
                    )
                }
            }
        }

        # =============================================
        # Show Device Result
        # =============================================

        if($deviceFail)
        {
            Write-Host ""
            Write-Host "################################################" -ForegroundColor Magenta
            Write-Host ("COMPARE DEVICE : " + $device) -ForegroundColor Magenta
            Write-Host "################################################" -ForegroundColor Magenta

            foreach($line in $deviceOutput)
            {
                Write-Host $line -ForegroundColor Red
            }
        }
    }

    Write-Host ""
    Write-Host "==========================================" -ForegroundColor Green
    Write-Host "Compare Done" -ForegroundColor Green
    Write-Host "==========================================" -ForegroundColor Green
}