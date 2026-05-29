$REGMAP["DC-SCM"] = @{

	0x00 = @{
		Name = "CPLD Revision"
	
		Fields = @(
	
			@{
				Name = "CPLD Version"
	
				MSB = 7
				LSB = 0
	
				InfoOnly = 1
	
				CombineSCMVersion = @{
					MajorAddr = 0x00
					MajorMSB  = 7
					MajorLSB  = 4
	
					MinorAddr = 0x00
					MinorMSB  = 3
					MinorLSB  = 0
				}
			}
		)
	}
	
	0x01 = @{
		Name = "SGPIO Control / Status"
	
		Fields = @(
	
			@{Name="SGPIO#0 Control Bit" ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x02 = @{
		Name = "SGPIO Control / Status"
	
		Fields = @(
	
			@{Name="SGPIO#1 Control Bit" ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x03 = @{
		Name = "SGPIO Control / Status"
	
		Fields = @(
	
			@{
				Name = "SGPIO 1 Link Status"
				MSB = 3
				LSB = 2
				Exp = @(0x3)
	
				Meaning = @{
					0x3 = "Link Stable"
				}
			}
	
			@{
				Name = "SGPIO 0 Link Status"
				MSB = 1
				LSB = 0
				Exp = @(0x3)
	
				Meaning = @{
					0x3 = "Link Stable"
				}
			}
	
		)
	}
	
	0x04 = @{
		Name = "WOL Status"
	
		Fields = @(
	
			@{Name="WOL_OUT" ; MSB=1; LSB=1; Exp=1}
			@{Name="WOL_IN"  ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x06 = @{
		Name = "SGPIO CRC Error Count"
	
		Fields = @(
	
			@{
				Name = "SGPIO 0 CRC Error Count"
				MSB = 7
				LSB = 0
				Exp = @(0x00)
	
				Meaning = @{
					0x00 = "Link Stable"
				}
			}
	
		)
	}
	
	0x07 = @{
		Name = "SGPIO CRC Error Count"
	
		Fields = @(
	
			@{
				Name = "SGPIO 1 CRC Error Count"
				MSB = 7
				LSB = 0
				Exp = @(0x00)
	
				Meaning = @{
					0x00 = "Link Stable"
				}
			}
	
		)
	}	
	0x0A = @{
		Name = "Power Status"
	
		Fields = @(
	
			@{
				Name = "DC-SCM VR on/off status Register"
				MSB = 7
				LSB = 0
				Exp = @(0x09)
	
				Meaning = @{
					0x00 = "All power rails are disabled"
					0x01 = "P3V3_BMC_STBY  is ready"
					0x02 = "P2V5_BMC_STBY  is ready"
					0x03 = "P1V8_BMC_STBY  is ready"
					0x04 = "P1V2_BMC_STBY  is ready"
					0x05 = "P1V8_LION      is ready"
					0x06 = "P1V0_BMC_STBY  is ready"
					0x07 = "P1V07_BMC_STBY is ready"
					0x09 = "HPM_STBY_RDY   is ready : Power on"
					0x0A = "P1V07_BMC_STBY_OFF"
					0x0B = "P1V0_BMC_STBY_OFF"
					0x0C = "P1V8_LION_OFF"
					0x0D = "P1V2_BMC_STBY_OFF"
					0x0E = "P2V5_BMC_STBY_OFF"
					0x0F = "P1V8_BMC_STBY_OFF"
					0x10 = "POWER_FAULT (Any power rail abruptly drops after power on)"
				}
			}
		)
	}	
	
	0x0B = @{
		Name = "Power Good Status"
	
		Fields = @(
	
			@{Name="HPM_STBY_RDY"    ; MSB=7; LSB=7; Exp=1}
			@{Name="P1V07_BMC_STBY"  ; MSB=6; LSB=6; Exp=1}
			@{Name="P1V0_BMC_STBY"   ; MSB=5; LSB=5; Exp=1}
			@{Name="P0V8_LION_CORE"  ; MSB=4; LSB=4; Exp=1}
			@{Name="P1V2_BMC_STBY"   ; MSB=3; LSB=3; Exp=1}
			@{Name="P1V8_BMC_STBY"   ; MSB=2; LSB=2; Exp=1}
			@{Name="P2V5_BMC_STBY"   ; MSB=1; LSB=1; Exp=1}
			@{Name="P3V3_STBY_SCM"   ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x10 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="P0_PROCHOT_N"            ; MSB=7; LSB=7; Exp=1}
			@{Name="Reserved6"               ; MSB=6; LSB=6; Exp=0}
			@{Name="P0_BMC_MEMTRIP_N"        ; MSB=5; LSB=5; Exp=1}
			@{Name="H_CPU0_MEMHOT_OUT_LVC1_N"; MSB=4; LSB=4; Exp=1}
			@{Name="P0_MEM_VRHOT_N"          ; MSB=3; LSB=3; Exp=1}
			@{Name="FM_CPU0_ERR2_LVC3_N"     ; MSB=2; LSB=2; Exp=1}
			@{Name="FM_CPU0_ERR1_LVC3_N"     ; MSB=1; LSB=1; Exp=1}
			@{Name="FM_CPU0_ERR0_LVC3_N"     ; MSB=0; LSB=0; Exp=1}
		)
	}
	
	0x11 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="P1_MEM_VRHOT_N"                ; MSB=7; LSB=7; Exp=1}
			@{Name="Reserved6"                     ; MSB=6; LSB=6; Exp=0}
			@{Name="PDB_ALERT2_N"                  ; MSB=5; LSB=5; Exp=1}
			@{Name="PDB_ALERT1_N"                  ; MSB=4; LSB=4; Exp=1}
			@{Name="PWRGD_CPU1_LVC3"               ; MSB=3; LSB=3; Exp=1}
			@{Name="IRQ_PVCCIN_CPU0_VRHOT_LVC3_N"  ; MSB=2; LSB=2; Exp=1}
			@{Name="FM_CPU0_THERMTRIP_LATCH_LVC3_N"; MSB=1; LSB=1; Exp=1}
			@{Name="P0_SKTOCC_N"                   ; MSB=0; LSB=0; Exp=0}
		)
	}
	
	0x12 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="PWRGD_CPU1_LVC3"               ; MSB=7; LSB=7; Exp=1}
			@{Name="IRQ_PVCCIN_CPU1_VRHOT_LVC3_N"  ; MSB=6; LSB=6; Exp=1}
			@{Name="FM_CPU1_THERMTRIP_LATCH_LVC3_N"; MSB=5; LSB=5; Exp=1}
			@{Name="P1_SKTOCC_N"                   ; MSB=4; LSB=4; Exp=0}
			@{Name="P1_PROCHOT_N"                  ; MSB=3; LSB=3; Exp=1}
			@{Name="Reserved2"                     ; MSB=3; LSB=3; Exp=0}			
			@{Name="P1_BMC_MEMTRIP_N"              ; MSB=1; LSB=1; Exp=1}
			@{Name="H_CPU1_MEMHOT_OUT_LVC1_N"      ; MSB=0; LSB=0; Exp=1}
		)
	}
	
	0x13 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="BMC_NODE_ID_4"        ; MSB=7; LSB=7; Exp=1}
			@{Name="BMC_NODE_ID_3"        ; MSB=6; LSB=6; Exp=1}
			@{Name="BMC_NODE_ID_2"        ; MSB=5; LSB=5; Exp=1}
			@{Name="BMC_NODE_ID_1"        ; MSB=4; LSB=4; Exp=1}
			@{Name="BMC_NODE_ID_0"        ; MSB=3; LSB=3; Exp=1}
			@{Name="FM_BIOS_POST_CMPLT_N" ; MSB=2; LSB=2; Exp=0}
			@{Name="Reserved1"            ; MSB=1; LSB=1; Exp=0}
			@{Name="Reserved0"            ; MSB=1; LSB=1; Exp=0}
		)
	}
	0x14 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="FM_DBP_PRESENT_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="VOLTAGE_ALERT_N"  ; MSB=6; LSB=6; Exp=1}
			@{Name="PSU2_PS_ON_N"     ; MSB=5; LSB=5; Exp=1}
			@{Name="CURRENT_ALERT_N"  ; MSB=4; LSB=4; Exp=1}
			@{Name="HSC_GPIO2_BMC_N"  ; MSB=3; LSB=3; Exp=1}
			@{Name="HSC_GPIO1_BMC_N"  ; MSB=2; LSB=2; Exp=1}
			@{Name="FM_SLPS4_S5_N"    ; MSB=1; LSB=1; Exp=1}
			@{Name="BMC_NODE_ID_5"    ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x15 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="SMB_BMC_ALERT3_N"        ; MSB=7; LSB=7; Exp=1}
			@{Name="SMB_BMC_ALERT2_N"        ; MSB=6; LSB=6; Exp=1}
			@{Name="SMB_BMC_ALERT1_N"        ; MSB=5; LSB=5; Exp=1}
			@{Name="PSU2_ALERT_N"            ; MSB=4; LSB=4; Exp=1}
			@{Name="PSU1_ALERT_N"            ; MSB=3; LSB=3; Exp=1}
			@{Name="FM_SLPS3_R_N"            ; MSB=2; LSB=2; Exp=1}
			@{Name="PSU1_BLADE_EN_N"         ; MSB=1; LSB=1; Exp=1}
			@{Name="FM_PCH_BMC_THERMTRIP_N"  ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x16 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="SMB_BMC_ALERT11_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="SMB_BMC_ALERT10_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="SMB_BMC_ALERT9_N"  ; MSB=5; LSB=5; Exp=1}
			@{Name="SMB_BMC_ALERT8_N"  ; MSB=4; LSB=4; Exp=1}
			@{Name="SMB_BMC_ALERT7_N"  ; MSB=3; LSB=3; Exp=1}
			@{Name="SMB_BMC_ALERT6_N"  ; MSB=2; LSB=2; Exp=1}
			@{Name="SMB_BMC_ALERT5_N"  ; MSB=1; LSB=1; Exp=1}
			@{Name="SMB_BMC_ALERT4_N"  ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	0x17 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="PLD_PORST_N"          ; MSB=7; LSB=7; Exp=1}
			@{Name="JTAG_BMC_PLD_NRST_N"  ; MSB=6; LSB=6; Exp=0}
			@{Name="RST_RSMRST_PLD_N"     ; MSB=5; LSB=5; Exp=1}
			@{Name="PWRGD_PCH_BFC_PWROK"  ; MSB=4; LSB=4; Exp=1}
			@{Name="HPM_BRD_REV_ID2"      ; MSB=3; LSB=3; Exp=0}
			@{Name="HPM_BRD_REV_ID1"      ; MSB=2; LSB=2; Exp=1}
			@{Name="HPM_BRD_REV_ID0"      ; MSB=1; LSB=1; Exp=1}
			@{Name="SMB_BMC_ALERT12_N"    ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x18 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="IRQ_SMI_ACTIVE_BMC_N"         ; MSB=7; LSB=7; Exp=1}
			@{Name="CD_INIT_ERROR_1"             ; MSB=6; LSB=6; Exp=0}
			@{Name="CD_INIT_ERROR_0"             ; MSB=5; LSB=5; Exp=0}
			@{Name="POWER_FAIL_R_N"              ; MSB=4; LSB=4; Exp=1}
			@{Name="IRQ_HSC_FAULT_N"             ; MSB=3; LSB=3; Exp=1}
			@{Name="IRQ_NMI_EVENT_R_N"           ; MSB=2; LSB=2; Exp=1}
			@{Name="FM_PVCCIN_CPU1_PWR_IN_ALERT_N"; MSB=1; LSB=1; Exp=1}
			@{Name="FM_PVCCIN_CPU0_PWR_IN_ALERT_N"; MSB=0; LSB=0; Exp=1}
	
		)
	}
	0x19 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="RM_THROTTLE_SW_N"    ; MSB=3; LSB=3; Exp=1}
			@{Name="FM_PCHHOT_N"         ; MSB=2; LSB=2; Exp=1}
			@{Name="IRQ_SMI_PMBUS_ALERT_N"; MSB=1; LSB=1; Exp=1}
			@{Name="PWRGD_P12V_AUX"      ; MSB=0; LSB=0; Exp=1}
	
		)
	}	
	
	0x20 = @{
		Name = "Check SGPIO1 Data"
	
		Fields = @(
	
			@{Name="PDB_ALERT3_EN_N"      ; MSB=7; LSB=7; Exp=0}
			@{Name="PDB_ALERT2_EN_N"      ; MSB=6; LSB=6; Exp=1}
			@{Name="RST_MIC_MUX_N"        ; MSB=5; LSB=5; Exp=1}
			@{Name="RST_BMC_RTCRST"       ; MSB=4; LSB=4; Exp=0}
			@{Name="FM_REMOTE_DEBUG_EN_N" ; MSB=3; LSB=3; Exp=0}
	
			@{
				Name="FM_SCM_BOARD_REV"
				MSB=2
				LSB=0
				InfoOnly=1
	
				Meaning=@{
					0x0 = "REV0"
					0x1 = "REV1"
					0x2 = "REV2"
					0x3 = "REV3"
					0x4 = "REV4"
					0x5 = "REV5"
					0x6 = "REV6"
					0x7 = "REV7"
				}
			}
	
		)
	}
	
	0x21 = @{
		Name = "Check SGPIO1 Data"
	
		Fields = @(
	
			@{Name="FM_JTAG_TCK_MUX_SEL"  ; MSB=7; LSB=7; Exp=0}
			@{Name="FM_JV_ADR_TRIGGER_EN" ; MSB=6; LSB=6; Exp=1}
			@{Name="FM_UART2_FPGA_SELECT" ; MSB=5; LSB=5; Exp=0}
			@{Name="FM_USB_CPU_FPGA_SELECT"; MSB=4; LSB=4; Exp=0}
			@{Name="PSU2_ALERT_EN_N"      ; MSB=3; LSB=3; Exp=1}
			@{Name="PSU_ALERT_PLD_EN_N"   ; MSB=2; LSB=2; Exp=1}
			@{Name="PDB_ALERT1_EN_N"      ; MSB=1; LSB=1; Exp=0}
			@{Name="FM_TPM_MOD_PRES_N"    ; MSB=0; LSB=0; Exp=0}
	
		)
	}
	
	0x22 = @{
		Name = "Check SGPIO1 Data"
	
		Fields = @(
	
			@{Name="SMB_SILVER_RST_BMC_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="USB_EX1_CPLD_OC_N"    ; MSB=6; LSB=6; Exp=1}
			@{Name="FM_BIOS_RECOVERY"     ; MSB=5; LSB=5; Exp=0}
			@{Name="IRQ_RMC_CPU_NMI_R"    ; MSB=4; LSB=4; Exp=1}
			@{Name="FM_ADR_ACK"           ; MSB=3; LSB=3; Exp=1}
			@{Name="FM_ME_RECOVERY_N"     ; MSB=2; LSB=2; Exp=1}
			@{Name="BMC_RSTBTN_OUT_N"     ; MSB=1; LSB=1; Exp=1}
			@{Name="FM_SPD_SWITCH_CTRL_N" ; MSB=0; LSB=0; Exp=0}
	
		)
	}	
	
	0x23 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="BMC_RSMRST_OUT"   ; MSB=7; LSB=7; Exp=1}
			@{Name="MB_JTAG_TRST_N"   ; MSB=6; LSB=6; Exp=1}
			@{Name="BFM_BMC_READY_N"  ; MSB=5; LSB=5; Exp=0}
			@{Name="LPC_ENABLE_ESPI_N"; MSB=4; LSB=4; Exp=0}
			@{Name="PWRBRK_SLI_OE_N"  ; MSB=3; LSB=3; Exp=1}
			@{Name="BMC_PCH_FM"       ; MSB=2; LSB=2; Exp=1}
			@{Name="PBREAK_EN_N"      ; MSB=1; LSB=1; Exp=1}
			@{Name="RM_THROTTLE_EN_N" ; MSB=0; LSB=0; Exp=0}
	
		)
	}	
	
	0x24 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="FM_BMC_ONCTL_N"            ; MSB=7; LSB=7; Exp=0}
			@{Name="FM_BMC_CRASHLOG_TRIG_N"    ; MSB=6; LSB=6; Exp=1}
			@{Name="FM_BIOS_MRC_DEBUG_MSG_DIS_N"; MSB=5; LSB=5; Exp=1}
			@{Name="ARM_SRST_N"                ; MSB=4; LSB=4; Exp=0}
			@{Name="CPU_FBRK_OUT_N"            ; MSB=3; LSB=3; Exp=1}
			@{Name="P1_DISABLE_COD_R_N"        ; MSB=2; LSB=2; Exp=1}
			@{Name="IRQ_TPM_SPI_N"             ; MSB=1; LSB=1; Exp=1}
			@{Name="RST_PE_E1S_I2C_MUX_N"      ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x25 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="Reserved7_4"          ; MSB=7; LSB=4; Exp=0}
	
			@{Name="FM_BMC_ENABLE"        ; MSB=3; LSB=3; Exp=1}
			@{Name="TPM_BMC_ALERT_N"      ; MSB=2; LSB=2; Exp=1}
			@{Name="FM_UEFI_DEBUG_MSG_EN" ; MSB=1; LSB=1; Exp=0}
			@{Name="BMC_NVDIMM_PRSNT_N"   ; MSB=0; LSB=0; Exp=1}
	
		)
	}	
	
	0x28 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="CPU_RMCA_N"                 ; MSB=7; LSB=7; Exp=1}
			@{Name="CPU_UNRMCA_N"               ; MSB=6; LSB=6; Exp=1}
			@{Name="PORT1_RST_AUTH_N"           ; MSB=5; LSB=5; Exp=1}
			@{Name="FM_CPU_MSMI_CATERR_LVT3_N"  ; MSB=4; LSB=4; Exp=1}
			@{Name="PSU_ALERT_N"                ; MSB=3; LSB=3; Exp=1}
			@{Name="RM_THROTTLE_N"              ; MSB=2; LSB=2; Exp=1}
			@{Name="FM_PCH_THROTTLE_R_N"        ; MSB=1; LSB=1; Exp=1}
			@{Name="FM_ADR_COMPLETE_RMC"        ; MSB=0; LSB=0; Exp=0}
	
		)
	}
	
	0x29 = @{
		Name = "Check SGPIO0 Data"
	
		Fields = @(
	
			@{Name="UART_BMC_BU6_RX"    ; MSB=7; LSB=7; Exp=0}
			@{Name="UART_BMC_S2_RX"     ; MSB=6; LSB=6; Exp=0}
			@{Name="UART_BMC_BU1_RX"    ; MSB=5; LSB=5; Exp=0}
			@{Name="CPU1_MON_FAIL_N"    ; MSB=4; LSB=4; Exp=1}
			@{Name="CPU0_MON_FAIL_N"    ; MSB=3; LSB=3; Exp=1}
			@{Name="FM_ADR_TRIGGER_N"   ; MSB=2; LSB=2; Exp=1}
			@{Name="GLB_RST_WARN_N"     ; MSB=1; LSB=1; Exp=1}
			@{Name="FM_THROTTLE_IN_N"   ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x32 = @{
		Name = "Check SGPIO1 Data"
	
		Fields = @(
	
			@{Name="UART_BMC_BU1_TX"         ; MSB=7; LSB=7; Exp=1}
			@{Name="BMC_FORCE_NM_THROTTLE_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="IRQ_BMC_SMI_N"           ; MSB=5; LSB=5; Exp=1}	
			@{Name="FM_CPLD_BMC_PWRDN_PLD_N" ; MSB=4; LSB=4; Exp=1}
			@{Name="BMC_PWRCAP_N"            ; MSB=3; LSB=3; Exp=1}
			@{Name="FM_FORCE_ADR"            ; MSB=2; LSB=2; Exp=0}
			@{Name="FM_SMM_CRASHDUMP"        ; MSB=1; LSB=1; Exp=0}	
			@{Name="FM_PWRBRK_N"             ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x33 = @{
		Name = "Check SGPIO1 Data"
	
		Fields = @(
	
			@{Name="Reserved7_4"      ; MSB=7; LSB=4; Exp=0}
			@{Name="PMB_ALERT_EN_N"   ; MSB=3; LSB=3; Exp=1}
			@{Name="UART_SEL"         ; MSB=2; LSB=2; Exp=0}
			@{Name="UART_BMC_BU6_TX"  ; MSB=1; LSB=1; Exp=1}
			@{Name="UART_BMC_S12_TX"  ; MSB=0; LSB=0; Exp=1}
	
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
	
}