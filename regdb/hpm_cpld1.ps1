$REGMAP["HPM CPLD1"] = @{

    0x00 = @{
        Name = "CPU0_STATUS"
        Fields = @(
            @{Name="PKG_ID";  MSB=7; LSB=5; Exp=0}
            @{Name="PROC_ID"; MSB=4; LSB=3; Exp=0}
            @{Name="SKTOCC";  MSB=2; LSB=2; Exp=1}
        )
    }

    0x01 = @{
        Name = "CPU1_STATUS"
        Fields = @(
            @{Name="READY"; MSB=0; LSB=0; Exp=1}
        )
    }
}