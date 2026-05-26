# =====================================================
# Decode Register Database
# =====================================================
function Decode-Device
{
    param(
        $DeviceName,
        $Data
    )

    $regdb = $REGMAP[$DeviceName]

    foreach($addr in ($regdb.Keys | Sort-Object))
    {
        if(!$Data.ContainsKey($addr))
        {
            continue
        }

        $regInfo = $regdb[$addr]
        $val     = $Data[$addr]

        Write-Host ""
        Write-Host (
            ("REG [0x{0:X2}] : {1} = 0x{2:X2}") -f
            $addr,
            $regInfo.Name,
            $val
        ) -ForegroundColor Cyan

        foreach($field in $regInfo.Fields)
        {
            $msb = $field.MSB
            $lsb = $field.LSB

            $fieldVal = Get-FieldValue `
                $val `
                $msb `
                $lsb

            $result = "PASS"

            if($field.ContainsKey("Exp"))
            {
                if($fieldVal -ne $field.Exp)
                {
                    $result = "FAIL"
                }
            }
            if($result -eq "PASS")
            {
                if($ShowPass -eq "Y")
                {
                    Write-Host (
                    "    [{0}:{1}] {2} = {3} (Exp:{4}) [{5}]" -f
                    $msb,
                    $lsb,
                    $field.Name,
                    $fieldVal,
                    $field.Exp,
                    $result
                    ) -ForegroundColor Green
                }
            }
            else
            {
                 Write-Host (
                     "    [{0}:{1}] {2} = {3} (Exp:{4}) [{5}]" -f
                    $msb,
                    $lsb,
                    $field.Name,
                    $fieldVal,
                    $field.Exp,
                    $result
                    ) -ForegroundColor Red
            }
        }
    }
}

function Decode-All
{
    Write-Host ""
    Write-Host "==========================================" -ForegroundColor Green
    Write-Host "Decode Registers" -ForegroundColor Green
    Write-Host "==========================================" -ForegroundColor Green
    
    foreach($sled in $DumpData.Keys)
    {
        Write-Host ""
        Write-Host ("################################################") -ForegroundColor Magenta
        Write-Host ("SLED : " + $sled) -ForegroundColor Magenta
        Write-Host ("################################################") -ForegroundColor Magenta

        foreach($device in $DumpData[$sled].Keys)
        {
            Write-Host ""
            #Write-Host ("DEBUG DEVICE = [" + $device + "]") -ForegroundColor Yellow
            #Write-Host ("DEBUG REGMAP = [" + ($REGMAP.Keys -join ",") + "]") -ForegroundColor Yellow
            Write-Host ("DEVICE : " + $device) -ForegroundColor Cyan
            if($REGMAP.ContainsKey($device))
            {
                Decode-Device `
                $device `
                $DumpData[$sled][$device]
            }
            else
            {
                Write-Host (
                "[WARNING] Unknown Device : " + $device
                ) -ForegroundColor Red
            }
        }
    }

    Write-Host ""
    Write-Host "==========================================" -ForegroundColor Green
    Write-Host "Decode Done" -ForegroundColor Green
    Write-Host "==========================================" -ForegroundColor Green
}
function Get-FieldValue
{
    param(
        $RegValue,
        $MSB,
        $LSB
    )

    $width = $MSB - $LSB + 1

    $mask = ((1 -shl $width) - 1)

    return (
        ($RegValue -shr $LSB) -band $mask
    )
}