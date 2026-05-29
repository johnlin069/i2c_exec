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

# =====================================================
# Decode-All
#   - Auto Detect SLED Count
#   - Auto Compare
#   - PASS / FAIL Check
#   - Highlight Difference
# =====================================================

function Decode-All
{
    Write-Host ""
    Write-Host "==========================================" -ForegroundColor Green
    Write-Host "Decode Registers Compare Mode" -ForegroundColor Green
    Write-Host "==========================================" -ForegroundColor Green
    
    $sledList  = $DumpData.Keys | Sort-Object
    $sledCount = $sledList.Count
    
    Write-Host ("[INFO] Detect SLED Count : " + $sledCount) -ForegroundColor Yellow

    # =====================================================
    # Collect All Devices
    # =====================================================

    $allDevices = @()

    foreach($sled in $sledList)
    {
        foreach($dev in $DumpData[$sled].Keys)
        {
            if($allDevices -notcontains $dev)
            {
                $allDevices += $dev
            }
        }
    }

    # =====================================================
    # Decode Start
    # =====================================================

    foreach($device in $allDevices)
    {
        Write-Host ""
        Write-Host "################################################" -ForegroundColor Magenta
        Write-Host ("DEVICE : " + $device) -ForegroundColor Cyan
        Write-Host "################################################" -ForegroundColor Magenta

        if(!$REGMAP.ContainsKey($device))
        {
            Write-Host "[WARNING] Unknown Device" -ForegroundColor Red
            continue
        }

        $regdb = $REGMAP[$device]

        foreach($addr in ($regdb.Keys | Sort-Object))
        {
            $regInfo = $regdb[$addr]

            #Write-Host ""
            #Write-Host (
            #    ("REG [0x{0:X2}] : {1}") -f
            #    $addr,
            #    $regInfo.Name
            #) -ForegroundColor Yellow
            $regOutput = @()
            $showReg   = $false

            foreach($field in $regInfo.Fields)
            {
                $msb = $field.MSB
                $lsb = $field.LSB

                # =====================================================
                # Compare Variables
                # =====================================================

                $fieldValues = @()
                $line = (
                    "    [{0}:{1}] {2,-30}" -f
                    $msb,
                    $lsb,
                    $field.Name
                )

                $hasFail = $false
				$hasInfo = $false
                # =====================================================
                # Collect SLED Values
                # =====================================================

                foreach($sled in $sledList)
                {
                    $valueText = "N/A"
                    $fieldVal  = "N/A"

                    if($DumpData[$sled].ContainsKey($device))
                    {
                        $devData = $DumpData[$sled][$device]

                        if($devData.ContainsKey($addr))
                        {
                            $regVal = $devData[$addr]

                            $fieldVal = Get-FieldValue `
                                $regVal `
                                $msb `
                                $lsb

                            $fieldValues += $fieldVal
                            

                            # =====================================================
                            # Meaning
                            # =====================================================

                            $meaningText = ""

                            if($field.ContainsKey("Meaning"))
                            {
                                if($field.Meaning.ContainsKey($fieldVal))
                                {
                                    $meaningText = $field.Meaning[$fieldVal]
                                }
                            }

                            # =====================================================
                            # PASS / FAIL
                            # =====================================================

                            $result = "PASS"

                            # =====================================================
                            # Compare : ExpMask / ExpValue
                            # =====================================================

                            if($field.ContainsKey("ExpMask"))
                            {
                                $maskedValue = ($fieldVal -band $field.ExpMask)

                                if($maskedValue -ne $field.ExpValue)
                                {
                                    $result = "FAIL"
                                    $hasFail = $true
                                }

                                $valueText = (
                                    "{0} (Mask:0x{1:X} Exp:0x{2:X}) [{3}]" -f
                                    $fieldVal,
                                    $field.ExpMask,
                                    $field.ExpValue,
                                    $result
                                )
                            }
							elseif($field.ContainsKey("InfoOnly"))
							{
								$result = "INFO"
								$hasInfo = $true
								if($field.ContainsKey("CombineVersion"))
								{
									$verMajor = $devData[$field.CombineVersion.Major]
									$verMinor = $devData[$field.CombineVersion.Minor]
									$verAux   = $devData[$field.CombineVersion.Aux]
								
									$valueText = (
										"{0:X2}.{1:X2}.{2:X2} [INFO]" -f
										$verMajor,
										$verMinor,
										$verAux
									)
								}
								elseif($field.ContainsKey("CombineSCMVersion"))
								{
									$majorReg = $devData[$field.CombineSCMVersion.MajorAddr]
									$minorReg = $devData[$field.CombineSCMVersion.MinorAddr]
								
									$majorVal = Get-FieldValue `
										$majorReg `
										$field.CombineSCMVersion.MajorMSB `
										$field.CombineSCMVersion.MajorLSB
								
									$minorVal = Get-FieldValue `
										$minorReg `
										$field.CombineSCMVersion.MinorMSB `
										$field.CombineSCMVersion.MinorLSB
								
									$valueText = (
										"{0:X2}.{1:X2} [INFO]" -f
										$majorVal,
										$minorVal
									)
								}								
								else
								{
									$valueText = (
										"{0} [INFO] Meaning:{1}" -f
										$fieldVal,
										$meaningText
									)
								}
							}

                            # =====================================================
                            # Compare : Exp Array
                            # =====================================================
							elseif($field.ContainsKey("ExpGT"))
							{
								if($fieldVal -le $field.ExpGT)
								{
									$result = "FAIL"
									$hasFail = $true
								}
							
								if($result -eq "FAIL")
								{
									$valueText = (
										"{0} (> {1}) [{2}] Meaning:{3}" -f
										$fieldVal,
										$field.ExpGT,
										$result,
										$meaningText
									)
								}
								else
								{
									$valueText = (
										"{0} (> {1}) [{2}]" -f
										$fieldVal,
										$field.ExpGT,
										$result
									)
								}
							}
							
                            elseif($field.ContainsKey("Exp"))
                            {
                                if($field.Exp -is [array])
                                {
                                    if($fieldVal -notin $field.Exp)
                                    {
                                        $result = "FAIL"
                                        $hasFail = $true
                                    }
                                }
                                else
                                {
                                    if($fieldVal -ne $field.Exp)
                                    {
                                        $result = "FAIL"
                                        $hasFail = $true
                                    }
                                }

                                if($result -eq "FAIL")
                                {
                                    $valueText = (
                                        "{0} (Exp:{1}) [{2}] Meaning:{3}" -f
                                        $fieldVal,
                                        ($field.Exp -join ","),
                                        $result,
                                        $meaningText
                                    )
                                }
                                else
                                {
                                    $valueText = (
                                        "{0} (Exp:{1}) [{2}]" -f
                                        $fieldVal,
                                        ($field.Exp -join ","),
                                        $result
                                    )
                                }
                            }

                            # =====================================================
                            # No Compare
                            # =====================================================

                            else
                            {
                                $valueText = "$fieldVal"
                            }

                        }
                    }

                    $line += (
                        " | {0,-8}: {1,-20}" -f
                        $sled,
                        $valueText
                    )
                }
                # =====================================================
                # Output
                # =====================================================

                if($hasFail)
                {
                    $showReg = $true
                    $regOutput += $line
                }
				elseif($hasInfo)
				{
					$showReg = $true
					$regOutput += $line
				}				
                elseif($ShowPass -eq "Y")
                {
                    $showReg = $true
                    $regOutput += $line
                }
            }
            if($showReg)
            {
                Write-Host ""

                Write-Host (
                    ("REG [0x{0:X2}] : {1}") -f
                    $addr,
                    $regInfo.Name
                ) -ForegroundColor Yellow
				foreach($out in $regOutput)
				{
					$segments = $out -split "(\[FAIL\]|\[PASS\]|\[INFO\]|\[DIFF\])"
					foreach($seg in $segments)
					{
						switch($seg)
						{
							"[FAIL]"
							{
								Write-Host $seg -ForegroundColor Red -NoNewline
							}
				
							"[PASS]"
							{
								Write-Host $seg -ForegroundColor Green -NoNewline
							}
				
							"[INFO]"
							{
								Write-Host $seg -ForegroundColor Cyan -NoNewline
							}
				
							"[DIFF]"
							{
								Write-Host $seg -ForegroundColor Yellow -NoNewline
							}
				
							default
							{
								Write-Host $seg -NoNewline
							}
						}
					}
					Write-Host ""
				}                
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