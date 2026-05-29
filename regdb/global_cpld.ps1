$REGMAP["GLOBAL CPLD"] = @{

	0x00 = @{
		Name = "CPU/Board ID"
	
		Fields = @(
	
			@{
				Name = "Write Busy Flag"
	
				MSB = 7
				LSB = 4
	
				InfoOnly = 1
	
				Meaning = @{
					0x1 = "SLED0 USE"
					0x2 = "SLED1 USE"
					0x4 = "SLED2 USE"
					0x8 = "SLED3 USE"
				}
			}
	
			@{
				Name = "FM_MISC_IOB_4S_N_8S_MODE"
	
				MSB = 0
				LSB = 0
	
				InfoOnly = 1
	
				Meaning = @{
					0 = "2S/4S"
					1 = "8S"
				}
			}	
		)
	}
	
	
	0x05 = @{
		Name = "Power State"
	
		Fields = @(
	
			@{Name="VPDB_P12V_AUX4_VR_ALERT_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="VPDB_P12V_AUX3_VR_ALERT_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="HPDB_P12V_AUX2_VR_ALERT_N" ; MSB=5; LSB=5; Exp=1}
			@{Name="HPDB_P12V_AUX1_VR_ALERT_N" ; MSB=4; LSB=4; Exp=1}
	
			@{Name="NODE3_FPGA_ROT_P1_RST_N" ; MSB=3; LSB=3; Exp=1}
			@{Name="NODE2_FPGA_ROT_P1_RST_N" ; MSB=2; LSB=2; Exp=1}
			@{Name="NODE1_FPGA_ROT_P1_RST_N" ; MSB=1; LSB=1; Exp=1}
			@{Name="NODE0_FPGA_ROT_P1_RST_N" ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x06 = @{
		Name = "Power State"
	
		Fields = @(
	
			@{Name="VPDB_P48V_AUX4_UV_ALERT2_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="VPDB_P48V_AUX4_OC_ALERT1_N" ; MSB=6; LSB=6; Exp=1}
	
			@{Name="VPDB_P48V_AUX3_UV_ALERT2_N" ; MSB=5; LSB=5; Exp=1}
			@{Name="VPDB_P48V_AUX3_OC_ALERT1_N" ; MSB=4; LSB=4; Exp=1}
	
			@{Name="HPDB_P48V_AUX2_UV_ALERT2_N" ; MSB=3; LSB=3; Exp=1}
			@{Name="HPDB_P48V_AUX2_OC_ALERT1_N" ; MSB=2; LSB=2; Exp=1}
	
			@{Name="HPDB_P48V_AUX1_UV_ALERT2_N" ; MSB=1; LSB=1; Exp=1}
			@{Name="HPDB_P48V_AUX1_OC_ALERT1_N" ; MSB=0; LSB=0; Exp=1}
	
		)
	}	
	
	
	0x18 = @{
		Name = "Fan Status"
	
		Fields = @(
	
			@{Name="FAN_PWM_SEL"  ; MSB=7; LSB=7; Exp=0}
			@{Name="FAN_PWM_CTRL" ; MSB=6; LSB=6; Exp=0}
	
			@{
				Name="FAN_FREQ_SET"
				MSB=5
				LSB=0
				InfoOnly=1
			}
	
		)
	}
	
	0x1A = @{
		Name = "Fan Status"
	
		Fields = @(
	
			@{
				Name="FAN_WDG_CNT"
				MSB=7
				LSB=0
				InfoOnly=1
			}
	
		)
	}
	
	0x1B = @{
		Name = "Fan Status"
	
		Fields = @(
	
			@{
				Name="FAN_WDG"
				MSB=7
				LSB=0
				InfoOnly=1
			}
	
		)
	}	

	0x1D = @{
		Name = "SYNC"
	
		Fields = @(
	
			@{Name="fm_hpm_stby_rst_node3_global_ack" ; MSB=7; LSB=7; Exp=1}
			@{Name="fm_hpm_stby_rst_node3_local_sync" ; MSB=6; LSB=6; Exp=1}
	
			@{Name="fm_hpm_stby_rst_node2_global_ack" ; MSB=5; LSB=5; Exp=1}
			@{Name="fm_hpm_stby_rst_node2_local_sync" ; MSB=4; LSB=4; Exp=1}
	
			@{Name="fm_hpm_stby_rst_node1_global_ack" ; MSB=3; LSB=3; Exp=1}
			@{Name="fm_hpm_stby_rst_node1_local_sync" ; MSB=2; LSB=2; Exp=1}
	
			@{Name="fm_hpm_stby_rst_node0_global_ack" ; MSB=1; LSB=1; Exp=1}
			@{Name="fm_hpm_stby_rst_node0_local_sync" ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x3A = @{
		Name = "HPDB/VPDB State"
	
		Fields = @(
	
			@{Name="FM_HPDB_P12V_AUX1_EN"    ; MSB=7; LSB=7; Exp=1}
			@{Name="FM_HPDB_P12V_AUX2_EN"    ; MSB=6; LSB=6; Exp=1}
	
			@{Name="HPDB_P48V_AUX1_HS_PWRGD" ; MSB=5; LSB=5; Exp=1}
			@{Name="HPDB_P48V_AUX2_HS_PWRGD" ; MSB=4; LSB=4; Exp=1}
	
			@{Name="FM_VPDB_P12V_AUX3_EN"    ; MSB=3; LSB=3; Exp=0}
			@{Name="FM_VPDB_P12V_AUX4_EN"    ; MSB=2; LSB=2; Exp=0}
	
			@{Name="VPDB_P48V_AUX3_HS_PWRGD" ; MSB=1; LSB=1; Exp=0}
			@{Name="VPDB_P48V_AUX4_HS_PWRGD" ; MSB=0; LSB=0; Exp=0}
	
		)
	}

	0x40 = @{
		Name = "MSFT Secure IP"
	
		Fields = @(
	
			@{
				Name = "Status MSFT Secure IP"
	
				MSB = 7
				LSB = 4
	
				InfoOnly = 1
				
				Meaning = @{
					1 = "Lock Process"
					2 = "Unlock Process"
					3 = "Fault Status"
				}				
					
			}
			
			@{
				Name = "Add Internal Lock"
	
				MSB = 1
				LSB = 1
	
				InfoOnly = 1
				
				Meaning = @{
					0 = "Disable"
					1 = "Enable"
				}				
					
			}
			
			
			@{
				Name = "Run Internal Unlock"
	
				MSB = 1
				LSB = 1
	
				InfoOnly = 1
				
				Meaning = @{
					0 = "Disable"
					1 = "Enable"
				}				
					
			}
		)
	}

	0xA6 = @{
		Name = "SGPIO Link"
	
		Fields = @(
	
			@{
				Name="SGPIO Link Status (CPLD1-PDB)"
				MSB=0
				LSB=0
				Exp=1
	
				Meaning=@{
					0 = "Link Down"
					1 = "Link Stable"
				}
			}
	
		)
	}

	0xA7 = @{
		Name = "SGPIO Link"
	
		Fields = @(
	
			@{
				Name="SGPIO CRC Error Count"
				MSB=7
				LSB=0
				Exp=0
	
				Meaning=@{
					0 = "Link Stable"
				}
			}
	
		)
	}
	
	0xF0 = @{
		Name = "Power State"
	
		Fields = @(
	
			@{Name="HPDB_P48V_AUX1_HS_FAULT_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="HPDB_P48V_AUX2_HS_FAULT_N" ; MSB=6; LSB=6; Exp=1}
	
			@{Name="VPDB_P48V_AUX3_HS_FAULT_N" ; MSB=5; LSB=5; Exp=0}
			@{Name="VPDB_P48V_AUX4_HS_FAULT_N" ; MSB=4; LSB=4; Exp=0}
	
			@{Name="PWRGD_P12V_AUX1"          ; MSB=3; LSB=3; Exp=1}
			@{Name="PWRGD_P12V_AUX2"          ; MSB=2; LSB=2; Exp=1}
	
			@{Name="flash_sel"                ; MSB=1; LSB=1; Exp=0}
			@{Name="BMC_FPGA_MUX_SEL"         ; MSB=0; LSB=0; Exp=1}
	
		)
	}

	0xF1 = @{
		Name = "GLB_THROTTLE"
	
		Fields = @(
	
			@{Name="Reserved7"               ; MSB=7; LSB=7; Exp=0}
	
			@{Name="PWRGD_P12V_AUX4"         ; MSB=6; LSB=6; Exp=1}
			@{Name="PWRGD_P12V_AUX3"         ; MSB=5; LSB=5; Exp=1}
	
			@{Name="GLB_THROTTLE_R_N_S_ALL"  ; MSB=4; LSB=4; Exp=1}
	
			@{
				Name="GLB_THROTTLE_R_N_SLED3"
				MSB=3
				LSB=3
				Exp=1
	
				Meaning=@{
					1 = "Stable"
				}
			}
	
			@{
				Name="GLB_THROTTLE_R_N_SLED2"
				MSB=2
				LSB=2
				Exp=1
	
				Meaning=@{
					1 = "Stable"
				}
			}
	
			@{
				Name="GLB_THROTTLE_R_N_SLED1"
				MSB=1
				LSB=1
				Exp=1
	
				Meaning=@{
					1 = "Stable"
				}
			}
	
			@{
				Name="GLB_THROTTLE_R_N_SLED0"
				MSB=0
				LSB=0
				Exp=1
	
				Meaning=@{
					1 = "Stable"
				}
			}
	
		)
	}
	
	
	
	0xF2 = @{
		Name = "GLB_PWRBRK"
	
		Fields = @(
	
			@{Name="Reserved7" ; MSB=7; LSB=7; Exp=0}
			@{Name="Reserved6" ; MSB=6; LSB=6; Exp=0}
			@{Name="Reserved5" ; MSB=5; LSB=5; Exp=0}
	
			@{Name="GLB_PWRBRK_R_N_S_ALL" ; MSB=4; LSB=4; Exp=1}
	
			@{
				Name="GLB_PWRBRK_R_N_SLED3"
				MSB=3
				LSB=3
				Exp=1
	
				Meaning=@{
					1 = "Stable"
				}
			}
	
			@{
				Name="GLB_PWRBRK_R_N_SLED2"
				MSB=2
				LSB=2
				Exp=1
	
				Meaning=@{
					1 = "Stable"
				}
			}
	
			@{
				Name="GLB_PWRBRK_R_N_SLED1"
				MSB=1
				LSB=1
				Exp=1
	
				Meaning=@{
					1 = "Stable"
				}
			}
	
			@{
				Name="GLB_PWRBRK_R_N_SLED0"
				MSB=0
				LSB=0
				Exp=1
	
				Meaning=@{
					1 = "Stable"
				}
			}
	
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