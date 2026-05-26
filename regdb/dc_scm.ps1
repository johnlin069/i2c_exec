$REGMAP["DC-SCM"] = @{

    0x00 = @{
        Name = "SCM_STATUS"
        Fields = @(
            @{Name="BOARD_ID"; MSB=7; LSB=4; Exp=3}
            @{Name="READY";    MSB=0; LSB=0; Exp=0}
        )
    }
}