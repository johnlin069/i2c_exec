$REGMAP["HPM CPLD2"] = @{

	0x01 = @{
		Name = "CPU/Board ID"
	
		Fields = @(
	
			@{
				Name = "CPU_LEGACY_SKT"
	
				MSB = 3
				LSB = 2
	
				InfoOnly = 1
	
				Meaning = @{
					0x0 = "CPU0"
					0x1 = "CPU1"
					0x2 = "CPU2"
					0x3 = "CPU3"
				}
			}
	
			@{
				Name = "CPU0_FRMAGENT_R"
	
				MSB = 0
				LSB = 0
	
				Exp = 1
			}
	
			@{
				Name = "Reserved1"
				MSB = 1
				LSB = 1
				Exp = 0
			}
		)
	}	
	
	0x02 = @{
		Name = "CPU Socket ID"
	
		Fields = @(
	
			@{
				Name = "CPU1_SOCKET_ID"
	
				MSB = 6
				LSB = 5
	
				InfoOnly = 1
	
				Meaning = @{
					0 = "ID0"
					1 = "ID1"
					2 = "ID2"
					3 = "ID3"
				}
			}
	
			@{
				Name = "CPU0_SOCKET_ID"
	
				MSB = 2
				LSB = 1
	
				InfoOnly = 1
	
				Meaning = @{
					0 = "ID0"
					1 = "ID1"
					2 = "ID2"
					3 = "ID3"
				}
			}
	
			@{Name="Reserved7"   ; MSB=7; LSB=7; Exp=0}
			@{Name="Reserved4_3" ; MSB=4; LSB=3; Exp=0}
			@{Name="Reserved0"   ; MSB=0; LSB=0; Exp=0}
		)
	}	
	
	0x03 = @{
		Name = "CONFIGURE"
	
		Fields = @(
	
			@{
				Name = "SKU_ID"
	
				MSB = 6
				LSB = 4
	
				InfoOnly = 1
			}
	
			@{
				Name = "MODE_ID"
	
				MSB = 3
				LSB = 2
	
				InfoOnly = 1
	
				Meaning = @{
					0 = "2S"
					1 = "8S"
					2 = "Reserved"
					3 = "4S"
				}
			}
	
			@{
				Name = "NODE_ID"
	
				MSB = 1
				LSB = 0
	
				InfoOnly = 1
	
				Meaning = @{
					0 = "SLED0"
					1 = "SLED1"
					2 = "SLED2"
					3 = "SLED3"
				}
			}
	
			@{Name="Reserved7" ; MSB=7; LSB=7; Exp=0}
		)
	}

	0x04 = @{
		Name = "CPU/Board ID"
	
		Fields = @(
	
			@{
				Name = "FM_I3C_CDP_ENABLE_R_N"
	
				MSB = 0
				LSB = 0
	
				Exp = 1
			}
	
			@{Name="Reserved7_1"; MSB=7; LSB=1; Exp=0}
		)
	}
	
	0x26 = @{
		Name = "E1.S Hot Plug"
	
		Fields = @(
			@{Name="ES1_INTR_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="ES2_INTR_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="ES3_INTR_N" ; MSB=5; LSB=5; Exp=1}
			@{Name="ES4_INTR_N" ; MSB=4; LSB=4; Exp=1}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x27 = @{
		Name = "E1.S P12V Enable"
	
		Fields = @(
			@{Name="ES1_INTR_NP12V_ES1_WE" ; MSB=7; LSB=7; Exp=0}
			@{Name="ES2_INTR_NP12V_ES2_WE" ; MSB=6; LSB=6; Exp=0}
			@{Name="ES3_INTR_NP12V_ES3_WE" ; MSB=5; LSB=5; Exp=0}
			@{Name="ES4_INTR_NP12V_ES4_WE" ; MSB=4; LSB=4; Exp=0}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x28 = @{
		Name = "E1.S Present"
	
		Fields = @(
			@{Name="PRSNT_ES1_R_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="PRSNT_ES2_R_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="PRSNT_ES3_R_N" ; MSB=5; LSB=5; Exp=1}
			@{Name="PRSNT_ES4_R_N" ; MSB=4; LSB=4; Exp=1}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x29 = @{
		Name = "P3V3 AUX E1.S"
	
		Fields = @(
			@{Name="PWRGD_P3V3_AUX_ES1" ; MSB=7; LSB=7; Exp=0}
			@{Name="PWRGD_P3V3_AUX_ES2" ; MSB=6; LSB=6; Exp=0}
			@{Name="PWRGD_P3V3_AUX_ES3" ; MSB=5; LSB=5; Exp=0}
			@{Name="PWRGD_P3V3_AUX_ES4" ; MSB=4; LSB=4; Exp=0}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x2A = @{
		Name = "P12V Enable E1.S"
	
		Fields = @(
			@{Name="P12V_ES1_EN" ; MSB=7; LSB=7; Exp=0}
			@{Name="P12V_ES2_EN" ; MSB=6; LSB=6; Exp=0}
			@{Name="P12V_ES3_EN" ; MSB=5; LSB=5; Exp=0}
			@{Name="P12V_ES4_EN" ; MSB=4; LSB=4; Exp=0}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x2B = @{
		Name = "E1.S Power Good"
	
		Fields = @(
			@{Name="PWRGD_ES1_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="PWRGD_ES2_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="PWRGD_ES3_N" ; MSB=5; LSB=5; Exp=1}
			@{Name="PWRGD_ES4_N" ; MSB=4; LSB=4; Exp=1}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x2C = @{
		Name = "E1.S Power Good 2"
	
		Fields = @(
			@{Name="PWRGD_ES1_N" ; MSB=7; LSB=7; Exp=0}
			@{Name="PWRGD_ES2_N" ; MSB=6; LSB=6; Exp=0}
			@{Name="PWRGD_ES3_N" ; MSB=5; LSB=5; Exp=0}
			@{Name="PWRGD_ES4_N" ; MSB=4; LSB=4; Exp=0}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x2D = @{
		Name = "P3V3 AUX ES Enable"
	
		Fields = @(
			@{Name="P3V3_AUX_ES1_EN" ; MSB=7; LSB=7; Exp=0}
			@{Name="P3V3_AUX_ES2_EN" ; MSB=6; LSB=6; Exp=0}
			@{Name="P3V3_AUX_ES3_EN" ; MSB=5; LSB=5; Exp=0}
			@{Name="P3V3_AUX_ES4_EN" ; MSB=4; LSB=4; Exp=0}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x2E = @{
		Name = "E1.S PERST#"
	
		Fields = @(
			@{Name="RST_ES1_PERST_N" ; MSB=7; LSB=7; Exp=0}
			@{Name="RST_ES2_PERST_N" ; MSB=6; LSB=6; Exp=0}
			@{Name="RST_ES3_PERST_N" ; MSB=5; LSB=5; Exp=0}
			@{Name="RST_ES4_PERST_N" ; MSB=4; LSB=4; Exp=0}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x2F = @{
		Name = "E1.S Amber LED"
	
		Fields = @(
			@{Name="ATTN_LED_ES4" ; MSB=7; LSB=6; Exp=0}
			@{Name="ATTN_LED_ES3" ; MSB=5; LSB=4; Exp=0}
			@{Name="ATTN_LED_ES2" ; MSB=3; LSB=2; Exp=0}
			@{Name="ATTN_LED_ES1" ; MSB=1; LSB=0; Exp=0}
		)
	}
	0x31 = @{
		Name = "SLED1 E1S FAULT and LOC Status"
	
		Fields = @(
			@{Name="Bit4_E1S_FAULT" ; MSB=7; LSB=7; Exp=0}
			@{Name="Bit4_E1S_LOC"   ; MSB=6; LSB=6; Exp=0}
			@{Name="Bit3_E1S_FAULT" ; MSB=5; LSB=5; Exp=0}
			@{Name="Bit3_E1S_LOC"   ; MSB=4; LSB=4; Exp=0}
			@{Name="Bit2_E1S_FAULT" ; MSB=3; LSB=3; Exp=0}
			@{Name="Bit2_E1S_LOC"   ; MSB=2; LSB=2; Exp=0}
			@{Name="Bit1_E1S_FAULT" ; MSB=1; LSB=1; Exp=0}
			@{Name="Bit1_E1S_LOC"   ; MSB=0; LSB=0; Exp=0}
		)
	}
	
	0x32 = @{
		Name = "P3V3_ES_BMC_EN"
	
		Fields = @(
			@{Name="P3V3_ES_BMC_EN1" ; MSB=7; LSB=7; Exp=1}
			@{Name="P3V3_ES_BMC_EN2" ; MSB=6; LSB=6; Exp=1}
			@{Name="P3V3_ES_BMC_EN3" ; MSB=5; LSB=5; Exp=1}
			@{Name="P3V3_ES_BMC_EN4" ; MSB=4; LSB=4; Exp=1}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x33 = @{
		Name = "P12V_ES_BMC_EN"
	
		Fields = @(
			@{Name="P12V_ES_BMC_EN1" ; MSB=7; LSB=7; Exp=1}
			@{Name="P12V_ES_BMC_EN2" ; MSB=6; LSB=6; Exp=1}
			@{Name="P12V_ES_BMC_EN3" ; MSB=5; LSB=5; Exp=1}
			@{Name="P12V_ES_BMC_EN4" ; MSB=4; LSB=4; Exp=1}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x34 = @{
		Name = "BMC E1S PERST CTRL"
	
		Fields = @(
			@{Name="BMC_E1S_PERST_CTRL_N1" ; MSB=7; LSB=7; Exp=1}
			@{Name="BMC_E1S_PERST_CTRL_N2" ; MSB=6; LSB=6; Exp=1}
			@{Name="BMC_E1S_PERST_CTRL_N3" ; MSB=5; LSB=5; Exp=1}
			@{Name="BMC_E1S_PERST_CTRL_N4" ; MSB=4; LSB=4; Exp=1}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}
	
	0x35 = @{
		Name = "SSD_INTR_N_CLR"
	
		Fields = @(
			@{Name="SSD_INTR_N_CLR1" ; MSB=7; LSB=7; Exp=0}
			@{Name="SSD_INTR_N_CLR2" ; MSB=6; LSB=6; Exp=0}
			@{Name="SSD_INTR_N_CLR3" ; MSB=5; LSB=5; Exp=0}
			@{Name="SSD_INTR_N_CLR4" ; MSB=4; LSB=4; Exp=0}
	
			@{Name="Reserved3_0" ; MSB=3; LSB=0; Exp=0}
		)
	}	
	
	0x3B = @{
		Name = "SLED2 E1S FAULT and LOC Status"
	
		Fields = @(
			@{Name="Bit4_E1S_FAULT" ; MSB=7; LSB=7; Exp=0}
			@{Name="Bit4_E1S_LOC"   ; MSB=6; LSB=6; Exp=0}
			@{Name="Bit3_E1S_FAULT" ; MSB=5; LSB=5; Exp=0}
			@{Name="Bit3_E1S_LOC"   ; MSB=4; LSB=4; Exp=0}
			@{Name="Bit2_E1S_FAULT" ; MSB=3; LSB=3; Exp=0}
			@{Name="Bit2_E1S_LOC"   ; MSB=2; LSB=2; Exp=0}
			@{Name="Bit1_E1S_FAULT" ; MSB=1; LSB=1; Exp=0}
			@{Name="Bit1_E1S_LOC"   ; MSB=0; LSB=0; Exp=0}
		)
	}
	
	0x3C = @{
		Name = "SLED3 E1S FAULT and LOC Status"
	
		Fields = @(
			@{Name="Bit4_E1S_FAULT" ; MSB=7; LSB=7; Exp=0}
			@{Name="Bit4_E1S_LOC"   ; MSB=6; LSB=6; Exp=0}
			@{Name="Bit3_E1S_FAULT" ; MSB=5; LSB=5; Exp=0}
			@{Name="Bit3_E1S_LOC"   ; MSB=4; LSB=4; Exp=0}
			@{Name="Bit2_E1S_FAULT" ; MSB=3; LSB=3; Exp=0}
			@{Name="Bit2_E1S_LOC"   ; MSB=2; LSB=2; Exp=0}
			@{Name="Bit1_E1S_FAULT" ; MSB=1; LSB=1; Exp=0}
			@{Name="Bit1_E1S_LOC"   ; MSB=0; LSB=0; Exp=0}
		)
	}
	
	0x3D = @{
		Name = "SLED4 E1S FAULT and LOC Status"
	
		Fields = @(
			@{Name="Bit4_E1S_FAULT" ; MSB=7; LSB=7; Exp=0}
			@{Name="Bit4_E1S_LOC"   ; MSB=6; LSB=6; Exp=0}
			@{Name="Bit3_E1S_FAULT" ; MSB=5; LSB=5; Exp=0}
			@{Name="Bit3_E1S_LOC"   ; MSB=4; LSB=4; Exp=0}
			@{Name="Bit2_E1S_FAULT" ; MSB=3; LSB=3; Exp=0}
			@{Name="Bit2_E1S_LOC"   ; MSB=2; LSB=2; Exp=0}
			@{Name="Bit1_E1S_FAULT" ; MSB=1; LSB=1; Exp=0}
			@{Name="Bit1_E1S_LOC"   ; MSB=0; LSB=0; Exp=0}
		)
	}	
	
	0xA5 = @{
		Name = "Internal State"
	
		Fields = @(
	
			@{
				Name = "SGPIO Link Status"
	
				MSB = 7
				LSB = 7
	
				Exp = 1
	
				Meaning = @{
					0 = "Link Down"
					1 = "Link Stable"
				}
			}
	
			@{
				Name = "ESPI Status"
	
				MSB = 0
				LSB = 0
	
				Exp = 1
	
				Meaning = @{
					0 = "BIOS Not Ready"
					1 = "BIOS Ready"
				}
			}
	
			@{Name="Reserved6_1"; MSB=6; LSB=1; Exp=0}
	
		)
	}
	
	0xA6 = @{
		Name = "Internal State"
	
		Fields = @(
	
			@{
				Name = "sgpio2_crc_err_count"
	
				MSB = 7
				LSB = 0
	
				Exp = 0
	
				Meaning = @{
					0 = "Link Stable"
				}
			}
	
		)
	}

	0xA7 = @{
		Name = "Internal State"
	
		Fields = @(
	
			@{
				Name = "sgpio2_crc_good_count"
	
				MSB = 7
				LSB = 0
	
				ExpGT = 0
			}
	
		)
	}


	0xA8 = @{
		Name = "Internal State"
	
		Fields = @(
	
			@{
				Name = "rvwire_debug_gpio"
	
				MSB = 7
				LSB = 4
	
				InfoOnly = 1
			}
	
			@{
				Name = "iwire_debug_gpio"
	
				MSB = 3
				LSB = 0
	
				InfoOnly = 1
			}
	
		)
	}

	0xA9 = @{
		Name = "Internal State"
	
		Fields = @(
	
			@{
				Name = "iDEBUG_LED"
	
				MSB = 7
				LSB = 0
	
				InfoOnly = 1
			}
	
		)
	}

	0xAA = @{
		Name = "Internal State"
	
		Fields = @(
	
			@{
				Name = "Power Sequence"
	
				MSB = 7
				LSB = 0
	
				InfoOnly = 1
			}
	
		)
	}

	0xAB = @{
		Name = "Internal State"
	
		Fields = @(
	
			@{
				Name = "FW_PECI_NODE_GLB_EN"
	
				MSB = 1
				LSB = 1
	
				Exp = 0
			}
	
			@{
				Name = "FM_STANDALONE_MODE_QS_EN_N"
	
				MSB = 0
				LSB = 0
	
				Exp = 0
			}
	
			@{Name="Reserved7_2"; MSB=7; LSB=2; Exp=0}
	
		)
	}

	0xFD = @{
		Name = "Firmware Version"
	
		Fields = @(
	
			@{
				Name = "Version"
	
				InfoOnly = 1
	
				CombineVersion = @{
					Major = 0xFE
					Minor = 0xFF
					Aux   = 0xFD
				}
			}
	
		)
	}

	
}