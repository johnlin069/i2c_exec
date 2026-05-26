$REGMAP["GLOBAL CPLD"] = @{

    0x00 = @{
        Name = "GLOBAL_STATUS"
        Fields = @(
            @{Name="PKG_ID";  MSB=7; LSB=5; Exp=0}
            @{Name="PROC_ID"; MSB=4; LSB=3; Exp=0}
            @{Name="SKTOCC";  MSB=2; LSB=2; Exp=1}
        )
    }
}