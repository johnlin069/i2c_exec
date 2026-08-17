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
				Name = "CPU0_FRMAGENT_STATUS"
	
				MSB = 0
				LSB = 0
				
				InfoOnly = 1
				
				
				Meaning = @{
					0x0 = "None Legacy"
					0x1 = "Legacy"
				}

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
				Meaning = @{
					0 = "BOM_A"
					1 = "BOM_B"
					2 = "BOM_C"					
					3 = "BOM_D"					
				}
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
	
		)
	}
	
	0x26 = @{
		Name = "E1.S Hot Plug"
	
		Fields = @(
			@{Name="ES1_INTR_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="ES2_INTR_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="ES3_INTR_N" ; MSB=5; LSB=5; Exp=1}
			@{Name="ES4_INTR_N" ; MSB=4; LSB=4; Exp=1}
		)
	}
	
	0x27 = @{
		Name = "E1.S P12V Enable"
	
		Fields = @(
			@{Name="P12V_ESS0_EN_1" ; MSB=7; LSB=7; Exp=1}
			@{Name="P12V_ESS0_EN_2" ; MSB=6; LSB=6; Exp=1}
			@{Name="P12V_ESS0_EN_3" ; MSB=5; LSB=5; Exp=1}
			@{Name="P12V_ESS0_EN_4" ; MSB=4; LSB=4; Exp=1}
			@{Name="P12V_ESS1_EN_1" ; MSB=3; LSB=3; Exp=1}
			@{Name="P12V_ESS1_EN_2" ; MSB=2; LSB=2; Exp=1}
			@{Name="P12V_ESS1_EN_3" ; MSB=1; LSB=1; Exp=1}
			@{Name="P12V_ESS1_EN_4" ; MSB=0; LSB=0; Exp=1}			
		)
	}
	
	0x28 = @{
		Name = "E1.S Presence detection"
	
		Fields = @(
			@{Name="PRSNT_ES1_R_N" ; MSB=7; LSB=7; Exp=0}
			@{Name="PRSNT_ES2_R_N" ; MSB=6; LSB=6; Exp=0}
			@{Name="PRSNT_ES3_R_N" ; MSB=5; LSB=5; Exp=0}
			@{Name="PRSNT_ES4_R_N" ; MSB=4; LSB=4; Exp=0}
		)
	}
	
	0x29 = @{
		Name = "P3V3 AUX E1.S"
	
		Fields = @(
			@{Name="PWRGD_P3V3_AUX_ES1" ; MSB=7; LSB=7; Exp=1}
			@{Name="PWRGD_P3V3_AUX_ES2" ; MSB=6; LSB=6; Exp=1}
			@{Name="PWRGD_P3V3_AUX_ES3" ; MSB=5; LSB=5; Exp=1}
			@{Name="PWRGD_P3V3_AUX_ES4" ; MSB=4; LSB=4; Exp=1}
		)
	}
	
	0x2A = @{
		Name = "P12V Enable E1.S"
	
		Fields = @(
			@{Name="P12V_ES1_EN" ; MSB=7; LSB=7; Exp=1}
			@{Name="P12V_ES2_EN" ; MSB=6; LSB=6; Exp=1}
			@{Name="P12V_ES3_EN" ; MSB=5; LSB=5; Exp=1}
			@{Name="P12V_ES4_EN" ; MSB=4; LSB=4; Exp=1}
		)
	}
	
	0x2B = @{
		Name = "E1.S Power Good"
	
		Fields = @(
			@{Name="PWRGD_ES1_N" ; MSB=7; LSB=7; Exp=0}
			@{Name="PWRGD_ES2_N" ; MSB=6; LSB=6; Exp=0}
			@{Name="PWRGD_ES3_N" ; MSB=5; LSB=5; Exp=0}
			@{Name="PWRGD_ES4_N" ; MSB=4; LSB=4; Exp=0}
		)
	}
	
	0x2C = @{
		Name = "E1.S Power Good P12V"
	
		Fields = @(
			@{Name="PWRGD_P12V_ES1" ; MSB=7; LSB=7; Exp=1}
			@{Name="PWRGD_P12V_ES2" ; MSB=6; LSB=6; Exp=1}
			@{Name="PWRGD_P12V_ES3" ; MSB=5; LSB=5; Exp=1}
			@{Name="PWRGD_P12V_ES4" ; MSB=4; LSB=4; Exp=1}
		)
	}
	
	0x2D = @{
		Name = "P3V3 AUX ES Enable"
	
		Fields = @(
			@{Name="P3V3_AUX_ES1_EN" ; MSB=7; LSB=7; Exp=1}
			@{Name="P3V3_AUX_ES2_EN" ; MSB=6; LSB=6; Exp=1}
			@{Name="P3V3_AUX_ES3_EN" ; MSB=5; LSB=5; Exp=1}
			@{Name="P3V3_AUX_ES4_EN" ; MSB=4; LSB=4; Exp=1}
		)
	}
	
	0x2E = @{
		Name = "E1.S PERST#"
	
		Fields = @(
			@{Name="RST_ES1_PERST_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="RST_ES2_PERST_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="RST_ES3_PERST_N" ; MSB=5; LSB=5; Exp=1}
			@{Name="RST_ES4_PERST_N" ; MSB=4; LSB=4; Exp=1}
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
	0x30 = @{
		Name = "BOOT ACK/BOOT SYNC/P12V_CXL_EN/E1S_PWR_CTRL"
	
		Fields = @(
			@{Name="Default"             ; MSB=7; LSB=7; Exp=0}
			@{Name="Default"             ; MSB=6; LSB=6; Exp=0}
			@{Name="FM_BOOT_ACK_SYNC"    ; MSB=5; LSB=5; Exp=0}
			@{Name="FM_FIRST_BOOT_SYNC"  ; MSB=4; LSB=4; Exp=0}
			@{Name="Default"             ; MSB=3; LSB=3; Exp=0}
			@{Name="Default"             ; MSB=2; LSB=2; Exp=0}
			@{Name="FM_P12V_CXL_EN"      ; MSB=1; LSB=1; Exp=1}
			@{Name="E1S_PWR_CTRL_PATH"   ; MSB=0; LSB=0; Exp=1}
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
		)
	}
	
	0x33 = @{
		Name = "P12V_ES_BMC_EN"
	
		Fields = @(
			@{Name="P12V_ES_BMC_EN1" ; MSB=7; LSB=7; Exp=1}
			@{Name="P12V_ES_BMC_EN2" ; MSB=6; LSB=6; Exp=1}
			@{Name="P12V_ES_BMC_EN3" ; MSB=5; LSB=5; Exp=1}
			@{Name="P12V_ES_BMC_EN4" ; MSB=4; LSB=4; Exp=1}
		)
	}
	
	0x34 = @{
		Name = "BMC E1S PERST CTRL"
	
		Fields = @(
			@{Name="BMC_E1S_PERST_CTRL_N1" ; MSB=7; LSB=7; Exp=1}
			@{Name="BMC_E1S_PERST_CTRL_N2" ; MSB=6; LSB=6; Exp=1}
			@{Name="BMC_E1S_PERST_CTRL_N3" ; MSB=5; LSB=5; Exp=1}
			@{Name="BMC_E1S_PERST_CTRL_N4" ; MSB=4; LSB=4; Exp=1}
		)
	}
	
	0x35 = @{
		Name = "SSD_INTR_N_CLR"
	
		Fields = @(
			@{Name="SSD_INTR_N_CLR1" ; MSB=7; LSB=7; Exp=0}
			@{Name="SSD_INTR_N_CLR2" ; MSB=6; LSB=6; Exp=0}
			@{Name="SSD_INTR_N_CLR3" ; MSB=5; LSB=5; Exp=0}
			@{Name="SSD_INTR_N_CLR4" ; MSB=4; LSB=4; Exp=0}
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
	
				InfoOnly = 1
	
				Meaning = @{
					0 = "NONE LEGACY"
					1 = "BIOS Ready"
				}
			}
	
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

	0xAA = @{
		Name = "Internal State"
	
		Fields = @(
	
			@{
				Name = "PWR STATE"
				MSB = 7
				LSB = 0
				Exp = @(0xFF)
				STATE_INFO = $true
				Meaning = @{
					0x00 = "INIT"
					0x01 = "HPM_STBY_RDY"
					0x02 = "P1V8_AUX_PWRGD"
					0x03 = "P1V05_AUX_PWRGD"
					0x04 = "PVCCFA_EHV_CPU0_PWRGD"
					0x05 = "PVNN_MAIN_CPU0_PWRGD"
					0x06 = "HPM_STBY_RST"
					0x07 = "AUX_PWRGD_CPU0_PLD"
					0x08 = "SLPS4_N & SLP_S3_N is on"
					0x09 = "P12V_MAIN_PWRGD"
					0x0A = "P3V3_MAIN_PWRGD"
					0x0B = "PVCCFA_EHV_CPU1_PWRGD"
					0x0C = "PVNN_MAIN_CPU1_PWRGD"
					0x0D = "PWRGD_AUX_PWRGD_CPU1_PLD"
					0x0E = "PWRGD_PVCCD_HV_CPU0"
					0x0F = "PWRGD_PVCCD_HV_CPU1"
					0x10 = "PWRGD_PVCCFA_EHV_FIVRA_CPU0"
					0x11 = "PWRGD_PVCCFA_EHV_FIVRA_CPU1"
					0x12 = "PWRGD_PVCCINF_CPU0"
					0x13 = "PWRGD_PVCCINF_CPU1"
					0x14 = "PWRGD_PVCCIN_CPU0"
					0x15 = "PWRGD_PVCCIN_CPU1"
					0x16 = "PWRGD_S0_PWROK_CPU0"
					0x17 = "PWRGD_S0_PWROK_CPU1"
					0x18 = "CPU0_REFCLK_RDY"
					0x19 = "CPU1_REFCLK_RDY"
					0xFF = "RST_PLTRST, system on"
				}
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
	
	
				InfoOnly = 1
	
				Meaning = @{
					0x0 = "LEGACY"
					0x1 = "NONE LEGACY"
				}
	
			}
	
			@{
				Name = "FM_STANDALONE_MODE_QS_EN_N"
	
				MSB = 0
				LSB = 0
	
				Exp = 1
			}	
	
		)
	}

	0xFD = @{
		Name = "Firmware Version"
	
		Fields = @(
	
			@{
				Name = "Version"
	
				InfoOnly = 1
				MSB = 7
				LSB = 0
	
				CombineVersion = @{
					Major = 0xFE
					Minor = 0xFF
					Aux   = 0xFD
				}
			}
	
		)
	}

	
}