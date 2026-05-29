$REGMAP["HPM CPLD1"] = @{

    0x00 = @{
        Name = "CPU0_STATUS"
        
		Fields = @(
            @{Name="PACKAGE_ID";   MSB=7; LSB=5; Exp = 0x0}
            @{Name="PROCESSOR_ID"; MSB=4; LSB=3; Exp = 0x0}
            @{Name="SKTOCC";       MSB=2; LSB=2; Exp = 0x0}
        )
    }

    0x01 = @{
        Name = "CPU1_STATUS"
        
		Fields = @(
            @{Name="PACKAGE_ID";   MSB=7; LSB=5; Exp = 0x0}
            @{Name="PROCESSOR_ID"; MSB=4; LSB=3; Exp = 0x0}
            @{Name="SKTOCC";       MSB=2; LSB=2; Exp = 0x0}
        )
    }

    0x03 = @{
        Name = "CONFIGURE"
        
		Fields = @(
            @{Name="Mode";   MSB=3; LSB=2; Exp = @(0x0, 0x1, 0x3)
                    InfoOnly = 1
					Meaning = @{
                    0x0 = "2S"
                    0x1 = "8S"
                    0x2 = "D2S check FRU"
                    0x3 = "4S"
                }
            }
            @{Name="NodeID"; MSB=1; LSB=0; Exp = @(0x0, 0x1, 0x2, 0x3)
                    InfoOnly = 1
					Meaning = @{
                    0x0 = "SLED1"
                    0x1 = "SLED2"
                    0x2 = "SLED3"
                    0x3 = "SLED4"
                }   
            }
        )
    }
    0x07 = @{
        Name = "COMMOM INFO"
        
		Fields = @(
            @{Name="NodeID"; MSB=1; LSB=0; Exp = @(0x0, 0x1, 0x2, 0x3)
                    InfoOnly = 1
					Meaning = @{
                    0x0 = "SLED1"
                    0x1 = "SLED2"
                    0x2 = "SLED3"
                    0x3 = "SLED4"
                }   
            }
        )
    }
    0x09 = @{
        Name = "VR Enable Signal"
        
		Fields = @(
            @{Name="FM_PVCC3V3_AUX_CPU0_EN(S5)" ; MSB=7; LSB=7; Exp = 0x1}
            @{Name="FM_PVCC3V3_AUX_CPU1_EN(S0)" ; MSB=6; LSB=6; Exp = 0x1}        
            @{Name="FM_P1V8_AUX_EN_R(S5)"       ; MSB=5; LSB=5; Exp = 0x1}          
            @{Name="FM_P1V05_AUX_EN_R(S5)"      ; MSB=4; LSB=4; Exp = 0x1}       
            @{Name="FM_P12V_EN_R(S0)"           ; MSB=3; LSB=3; Exp = 0x1}          
            @{Name="FM_P3V3_EN_R(S0)"           ; MSB=2; LSB=2; Exp = 0x1}          
            @{Name="FM_P12V_DIMM_CPU0_EN_R(S0)" ; MSB=1; LSB=1; Exp = 0x1}          
            @{Name="FM_P12V_DIMM_CPU1_EN_R(S0)" ; MSB=0; LSB=0; Exp = 0x1}          
        )
    }
    0x0A = @{
        Name = "PDB Blade Enable to BMC/CPLD & PWRGD"
        
		Fields = @(
            @{Name="PDB_BLADE_EN_N"                ; MSB=7; LSB=7; Exp = 0x1}
            @{Name="PWRGD_P3V3_AUX_R1(S5)"         ; MSB=6; LSB=6; Exp = 0x1}        
            @{Name="PWRGD_P1V8_AUX_R(S5)"          ; MSB=5; LSB=5; Exp = 0x1}          
            @{Name="PWRGD_P1V05_AUX_R(S5)"         ; MSB=4; LSB=4; Exp = 0x1}       
            @{Name="PWRGD_P3V3_MAIN_R(PWRGD_P3V3)" ; MSB=3; LSB=3; Exp = 0x1}          
            @{Name="PWRGD_P12V_AUX_R"              ; MSB=2; LSB=2; Exp = 0x1}          
            @{Name="PWRGD_P12V_SCM"                ; MSB=1; LSB=1; Exp = 0x1}                
        )
    }

    0x0D = @{
        Name = "Power/Reset Button & SLPS Status o& P12V PWRGD & P12V PWRGD Fail"
    
        Fields = @(
    
            @{Name="Power button signal to CPU"                       ; MSB=7; LSB=7; Exp=0x1}
            @{Name="Reset button signal to CPU"                       ; MSB=6; LSB=6; Exp=0x1}
            @{Name="SLPS4 from CPU"                                   ; MSB=5; LSB=5; Exp=0x1}
            @{Name="SLPS3 from CPU"                                   ; MSB=4; LSB=4; Exp=0x1}
            @{Name="P12V fail reset input"                            ; MSB=3; LSB=3; Exp=0x1}
            @{Name="Power good signal to indicate P12_MAIN_R status"  ; MSB=2; LSB=2; Exp=0x1}   
        )
    }
    
    0x10 = @{
        Name = "Enable Specify VR Power Output(CPU0)"
    
        Fields = @(
    
            @{Name="FM_PVCCIO_HV_CPU0_EN_R"        ; MSB=7; LSB=7; Exp=1}
            @{Name="FM_PVCCD_HV_CPU0_EN_R"         ; MSB=6; LSB=6; Exp=1}
            @{Name="FM_PVCCFA_EHV_CPU0_EN_R"       ; MSB=5; LSB=5; Exp=1}
            @{Name="FM_PVCCFA_EHV_FIVRA_CPU0_EN_R" ; MSB=4; LSB=4; Exp=1}
            @{Name="FM_PVCCIN_CPU0_EN_R"           ; MSB=3; LSB=3; Exp=1}
            @{Name="FM_PVCCINF_CPU0_EN_R"          ; MSB=2; LSB=2; Exp=1}
            @{Name="FM_PVNN_MAIN_CPU0_EN_R"        ; MSB=1; LSB=1; Exp=1}
            @{Name="FM_S5_PWR_RETAINED_CPU0_PLD"   ; MSB=0; LSB=0; Exp=1}
    
        )
    }
    
    0x11 = @{
        Name = "PWGD(CPU0)"
    
        Fields = @(
    
            @{Name="PWRGD_CPU0_LVC1_R"     ; MSB=7; LSB=7; Exp=1}
			@{Name="PWRGD_S0_PWROK_CPU0_R" ; MSB=6; LSB=6; Exp=1}
        )
    }
    
    0x12 = @{
        Name = "Enable Specify VR Power Output(CPU1)"
    
        Fields = @(
    
            @{Name="FM_PVCCIO_HV_CPU1_EN_R"        ; MSB=7; LSB=7; Exp=1}
            @{Name="FM_PVCCD_HV_CPU1_EN_R"         ; MSB=6; LSB=6; Exp=1}
            @{Name="FM_PVCCFA_EHV_CPU1_EN_R"       ; MSB=5; LSB=5; Exp=1}
            @{Name="FM_PVCCFA_EHV_FIVRA_CPU1_EN_R" ; MSB=4; LSB=4; Exp=1}
            @{Name="FM_PVCCIN_CPU1_EN_R"           ; MSB=3; LSB=3; Exp=1}
            @{Name="FM_PVCCINF_CPU1_EN_R"          ; MSB=2; LSB=2; Exp=1}
            @{Name="FM_PVNN_MAIN_CPU1_EN_R"        ; MSB=1; LSB=1; Exp=1}
            @{Name="FM_S5_PWR_RETAINED_CPU1_PLD"   ; MSB=0; LSB=0; Exp=0}
    
        )
    }
    
    0x13 = @{
        Name = "PWGD(CPU1)"
    
        Fields = @(
    
            @{Name="PWRGD_CPU1_LVC1_R"     ; MSB=7; LSB=7; Exp=1}
			@{Name="PWRGD_S0_PWROK_CPU1_R" ; MSB=6; LSB=6; Exp=1}
    
        )
    }
    
    0x14 = @{
        Name = "Indicate when all the CPU0 power rails are fully"
    
        Fields = @(
    
            @{Name="PWRGD_AUX_PWRGD_CPU0_PLD"      ; MSB=7; LSB=7; Exp=1}
            @{Name="PWRGD_PVCCIO_HV_CPU0_R"        ; MSB=6; LSB=6; Exp=1}
            @{Name="PWRGD_PVCCD_HV_CPU0_R"         ; MSB=5; LSB=5; Exp=1}
            @{Name="PWRGD_PVCCFA_EHV_CPU0_R"       ; MSB=4; LSB=4; Exp=1}
            @{Name="PWRGD_PVCCFA_EHV_FIVRA_CPU0_R" ; MSB=3; LSB=3; Exp=1}
            @{Name="PWRGD_PVCCIN_CPU0_R"           ; MSB=2; LSB=2; Exp=1}
            @{Name="PWRGD_PVCCINF_CPU0_R"          ; MSB=1; LSB=1; Exp=1}
            @{Name="PWRGD_PVNN_MAIN_CPU0_R"        ; MSB=0; LSB=0; Exp=1}
    
        )
    }
    
    0x15 = @{
        Name = "Indicate when all the CPU1 power rails are fully"
    
        Fields = @(
    
            @{Name="PWRGD_AUX_PWRGD_CPU1_PLD"      ; MSB=7; LSB=7; Exp=1}
            @{Name="PWRGD_PVCCIO_HV_CPU1_R"        ; MSB=6; LSB=6; Exp=1}
            @{Name="PWRGD_PVCCD_HV_CPU1_R"         ; MSB=5; LSB=5; Exp=1}
            @{Name="PWRGD_PVCCFA_EHV_CPU1_R"       ; MSB=4; LSB=4; Exp=1}
            @{Name="PWRGD_PVCCFA_EHV_FIVRA_CPU1_R" ; MSB=3; LSB=3; Exp=1}
            @{Name="PWRGD_PVCCIN_CPU1_R"           ; MSB=2; LSB=2; Exp=1}
            @{Name="PWRGD_PVCCINF_CPU1_R"          ; MSB=1; LSB=1; Exp=1}
            @{Name="PWRGD_PVNN_MAIN_CPU1_R"        ; MSB=0; LSB=0; Exp=1}
    
        )
	}
	0x1B = @{
		Name = "DDR Related (CPU0 RESET)"

		Fields = @(

        @{Name="M_AB_CPU0_RESET_N" ; MSB=7; LSB=7; Exp=0}
        @{Name="M_CD_CPU0_RESET_N" ; MSB=6; LSB=6; Exp=1}
        @{Name="M_EF_CPU0_RESET_N" ; MSB=5; LSB=5; Exp=1}
        @{Name="M_GH_CPU0_RESET_N" ; MSB=4; LSB=4; Exp=0}

		)
	}
	
	0x1C = @{
		Name = "DDR Related (CPU0 FPGA RESET)"

		Fields = @(

        @{Name="M_AB_CPU0_FPGA_RESET_R_N" ; MSB=7; LSB=7; Exp=0}
        @{Name="M_CD_CPU0_FPGA_RESET_R_N" ; MSB=6; LSB=6; Exp=1}
        @{Name="M_EF_CPU0_FPGA_RESET_R_N" ; MSB=5; LSB=5; Exp=1}
        @{Name="M_GH_CPU0_FPGA_RESET_R_N" ; MSB=4; LSB=4; Exp=0}

		)
	}

    0x1D = @{
        Name = "DDR Related (CPU1 RESET)"
    
        Fields = @(
    
            @{Name="M_AB_CPU1_RESET_N" ; MSB=7; LSB=7; Exp=0}
            @{Name="M_CD_CPU1_RESET_N" ; MSB=6; LSB=6; Exp=0}
            @{Name="M_EF_CPU1_RESET_N" ; MSB=5; LSB=5; Exp=1}
            @{Name="M_GH_CPU1_RESET_N" ; MSB=4; LSB=4; Exp=0}
    
        )
    }
    
    0x1E = @{
        Name = "DDR Related (CPU1 FPGA RESET)"
    
        Fields = @(
    
            @{Name="M_AB_CPU1_FPGA_RESET_R_N" ; MSB=7; LSB=7; Exp=0}
            @{Name="M_CD_CPU1_FPGA_RESET_R_N" ; MSB=6; LSB=6; Exp=0}
            @{Name="M_EF_CPU1_FPGA_RESET_R_N" ; MSB=5; LSB=5; Exp=1}
            @{Name="M_GH_CPU1_FPGA_RESET_R_N" ; MSB=4; LSB=4; Exp=0}
    
        )
    }
    
    0x1F = @{
        Name = "Indicate CPU0 DIMM power good"
    
        Fields = @(
    
            @{Name="PWRGD_FAIL_CPU0_AB_PLD" ; MSB=7; LSB=7; Exp=1}
            @{Name="PWRGD_FAIL_CPU0_CD_PLD" ; MSB=6; LSB=6; Exp=1}
            @{Name="PWRGD_FAIL_CPU0_EF_PLD" ; MSB=5; LSB=5; Exp=1}
            @{Name="PWRGD_FAIL_CPU0_GH_PLD" ; MSB=4; LSB=4; Exp=1}
    
        )
    }
    
    0x20 = @{
        Name = "Indicate CPU1 DIMM power good"
    
        Fields = @(
    
            @{Name="PWRGD_FAIL_CPU1_AB_PLD" ; MSB=7; LSB=7; Exp=1}
            @{Name="PWRGD_FAIL_CPU1_CD_PLD" ; MSB=6; LSB=6; Exp=1}
            @{Name="PWRGD_FAIL_CPU1_EF_PLD" ; MSB=5; LSB=5; Exp=1}
            @{Name="PWRGD_FAIL_CPU1_GH_PLD" ; MSB=4; LSB=4; Exp=1}
    
        )
    }
    
    0x21 = @{
        Name = "CPU0 DRAM power good"
    
        Fields = @(
    
            @{Name="PWRGD_DRAMPWRGD_CPU0_AB_R_LVC3" ; MSB=7; LSB=7; Exp=1}
            @{Name="PWRGD_DRAMPWRGD_CPU0_CD_R_LVC3" ; MSB=6; LSB=6; Exp=1}
            @{Name="PWRGD_DRAMPWRGD_CPU0_EF_R_LVC3" ; MSB=5; LSB=5; Exp=1}
            @{Name="PWRGD_DRAMPWRGD_CPU0_GH_R_LVC3" ; MSB=4; LSB=4; Exp=1}
    
        )
    }
    
    0x22 = @{
        Name = "CPU1 DRAM power good"
    
        Fields = @(
    
            @{Name="PWRGD_DRAMPWRGD_CPU1_AB_R_LVC3" ; MSB=7; LSB=7; Exp=1}
            @{Name="PWRGD_DRAMPWRGD_CPU1_CD_R_LVC3" ; MSB=6; LSB=6; Exp=1}
            @{Name="PWRGD_DRAMPWRGD_CPU1_EF_R_LVC3" ; MSB=5; LSB=5; Exp=1}
            @{Name="PWRGD_DRAMPWRGD_CPU1_GH_R_LVC3" ; MSB=4; LSB=4; Exp=1}
    
        )
    }
	

    0x25 = @{
        Name = "CPU Reset"
    
        Fields = @(
    
            @{Name="CPU0 send platform reset to CPLD" ; MSB=7; LSB=7; Exp=1}
            @{Name="RST_CPU0_RESET_R_N(CPLD to reset CPU0)" ; MSB=6; LSB=6; Exp=1}
            @{Name="RST_CPU1_RESET_R_N(CPLD to reset CPU1)" ; MSB=5; LSB=5; Exp=1}
    
        )
    }
    
    0x2D = @{
        Name = "FAN Related"
    
        Fields = @(
    
            @{Name="iP3V3_M2_PLD_EN[2]" ; MSB=1; LSB=1; Exp=1}
            @{Name="iP3V3_M2_PLD_EN[1]" ; MSB=0; LSB=0; Exp=1}
    
        )
    }

    0x30 = @{
        Name = "CPU0/1 SMB ALERT"
    
        Fields = @(
    
            @{Name="SMB_MM7_SEL" ; MSB=2; LSB=2; Exp=0}
            @{Name="SMB_MM6_SEL" ; MSB=1; LSB=1; Exp=0}
            @{Name="1 indicates BIOS read/write, 0 indicates BMC read/write" ; MSB=0; LSB=0; Exp=0}
    
        )
    }
    
    0x3E = @{
        Name = "Cable ID information from the PCA9555"
    
        Fields = @(
    
            @{Name="UPI1_CPU0_PRSNT1_N_R" ; MSB=7; LSB=7; Exp=0}
            @{Name="UPI1_CPU0_ID0_R"      ; MSB=6; LSB=6; Exp=0}
            @{Name="UPI3_CPU1_ID0_R"      ; MSB=5; LSB=5; Exp=0}
            @{Name="UPI3_CPU1_ID1_R"      ; MSB=4; LSB=4; Exp=0}
            @{Name="UPI2_CPU1_PRSNT2_N_R" ; MSB=3; LSB=3; Exp=0}
            @{Name="UPI2_CPU1_ID1_R"      ; MSB=2; LSB=2; Exp=0}
            @{Name="UPI0_CPU1_PRSNT2_N_R" ; MSB=1; LSB=1; Exp=0}
            @{Name="UPI0_CPU1_ID0_R"      ; MSB=0; LSB=0; Exp=0}
    
        )
    }
		
	0x40 = @{
		Name = "CXL Devices Reset Control"

		Fields = @(

        @{Name="RST_CPU_PE_MCIO_PERST_N" ; MSB=7; LSB=7; Exp=1}

		)
    }
    
    0x50 = @{
        Name = "CXL"
    
        Fields = @(
    
            @{Name="P3V3_M2_S1_PLD_EN" ; MSB=7; LSB=7; Exp=0}
            @{Name="P3V3_M2_S2_PLD_EN" ; MSB=6; LSB=6; Exp=0}
            @{Name="PWRGD_M2_S1"       ; MSB=5; LSB=5; Exp=1}
            @{Name="PWRGD_M2_S2"       ; MSB=4; LSB=4; Exp=1}
            @{Name="PWRGD_P3V3_M2_S1"  ; MSB=3; LSB=3; Exp=1}
            @{Name="PWRGD_P3V3_M2_S2"  ; MSB=2; LSB=2; Exp=1}
            @{Name="SMB_M2_S1_ALERT_N" ; MSB=1; LSB=1; Exp=1}
            @{Name="SMB_M2_S2_ALERT_N" ; MSB=0; LSB=0; Exp=1}
    
        )
    }
    
    0x51 = @{
        Name = "M.2 Devices PERST#"
    
        Fields = @(
    
            @{Name="RST_M2_S1_PERST_N" ; MSB=7; LSB=7; Exp=1}
            @{Name="RST_M2_S2_PERST_N" ; MSB=6; LSB=6; Exp=1}
    
        )
    }
    
    0x60 = @{
        Name = "CLK Ready or CLK Buffer PWRGD"
    
        Fields = @(
    
            @{Name="FM_CPU0_REFCLK_RDY_PLD" ; MSB=7; LSB=7; Exp=1}
            @{Name="FM_CPU1_REFCLK_RDY_PLD" ; MSB=6; LSB=6; Exp=1}
            @{Name="FM_CLKBUF_PWRGD_EN_R"  ; MSB=5; LSB=5; Exp=1}
    
        )
    }
	0x63 = @{
		Name = "HPM\SCM Common Signals"
	
		Fields = @(
	
			@{Name="Power Button - SYS_PWRBTN_R_N"                 ; MSB=7; LSB=7; Exp=0}
			@{Name="SCM CPLD feeds into HPM CPLD RSMRST# logic"    ; MSB=6; LSB=6; Exp=0}
			@{Name="Platform Reset Signal to SCM CPLD"             ; MSB=5; LSB=5; Exp=0}
			@{Name="Indicate system power is OK"                   ; MSB=4; LSB=4; Exp=0}
			@{Name="Inform SCM CPLD that HPM standby power ready"  ; MSB=3; LSB=3; Exp=0}
			@{Name="SCM CPLD to enable HPM standby power"          ; MSB=2; LSB=2; Exp=0}
			@{Name="SPARE0"                                        ; MSB=1; LSB=1; Exp=0}
			@{Name="SPARE1"                                        ; MSB=0; LSB=0; Exp=0}
	
		)
	}
	
	0x66 = @{
		Name = "ADR/Alert/IRQ/Hot"
	
		Fields = @(
	
			@{Name="FM_ADR_COMPLETE_PLD"       ; MSB=7; LSB=7; Exp=0}
			@{Name="FM_CPU0_ADR_TRIGGER_PLD_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="FM_ADR_SMI_GPIO_R_N"       ; MSB=5; LSB=5; Exp=1}
			@{Name="H_CPU_NMI_LVC1_R"          ; MSB=4; LSB=4; Exp=0}
			@{Name="H_CPU_NMI_LVC1_R"          ; MSB=3; LSB=3; Exp=0}
			@{Name="H_CPU_CATERR_LVC1_N"       ; MSB=2; LSB=2; Exp=1}
			@{Name="H_CPU_RMCA_LVC1_N"         ; MSB=1; LSB=1; Exp=1}
			@{Name="H_CPU_ERR0_LVC1_N"         ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x67 = @{
		Name = "CPU Error/Event"
	
		Fields = @(
	
			@{Name="H_CPU_ERR1_LVC1_N"             ; MSB=7; LSB=7; Exp=1}
			@{Name="H_CPU_ERR2_LVC1_N"             ; MSB=6; LSB=6; Exp=1}
			@{Name="CPU0_MON_FAIL_PLD_LVC1_N"     ; MSB=5; LSB=5; Exp=1}
			@{Name="CPU1_MON_FAIL_PLD_LVC1_N"     ; MSB=4; LSB=4; Exp=1}
			@{Name="FM_CPU0_GLB_RST_WARN_PLD_N"   ; MSB=3; LSB=3; Exp=1}
			@{Name="CPU0_CD_INIT_ERROR"           ; MSB=2; LSB=2; Exp=0}
			@{Name="CPU1_CD_INIT_ERROR"           ; MSB=1; LSB=1; Exp=0}
			@{Name="FM_SYS_THROTTLE_PLD_N"        ; MSB=0; LSB=0; Exp=1}
	
		)
	}

	0x68 = @{
		Name = "CPU Thermal / VRHOT / PROCHOT"
	
		Fields = @(
	
			@{Name="H_CPU0_THERMTRIP_LVC1_N"      ; MSB=7; LSB=7; Exp=1}
			@{Name="H_CPU1_THERMTRIP_LVC1_N"      ; MSB=6; LSB=6; Exp=1}
			@{Name="H_CPU0_MEMTRIP_LVC1_N"        ; MSB=5; LSB=5; Exp=1}
			@{Name="H_CPU1_MEMTRIP_LVC1_N"        ; MSB=4; LSB=4; Exp=1}
			@{Name="CPU0_VRHOT_N"                 ; MSB=3; LSB=3; Exp=1}
			@{Name="CPU1_VRHOT_N"                 ; MSB=2; LSB=2; Exp=1}
			@{Name="H_CPU0_PROCHOT_LVC1_R_N"      ; MSB=1; LSB=1; Exp=1}
			@{Name="H_CPU1_PROCHOT_LVC1_R_N"      ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x69 = @{
		Name = "CPU MEMHOT / BMC PROCHOT"
	
		Fields = @(
	
			@{Name="CPU0_MEM_VRHOT_N"             ; MSB=7; LSB=7; Exp=1}
			@{Name="CPU1_MEM_VRHOT_N"             ; MSB=6; LSB=6; Exp=1}
			@{Name="H_CPU0_MEMHOT_IN_LVC1_R_N"    ; MSB=5; LSB=5; Exp=1}
			@{Name="H_CPU1_MEMHOT_IN_LVC1_R_N"    ; MSB=4; LSB=4; Exp=1}
			@{Name="H_CPU0_MEMHOT_OUT_LVC1_R2_N"  ; MSB=3; LSB=3; Exp=1}
			@{Name="H_CPU1_MEMHOT_OUT_LVC1_R2_N"  ; MSB=2; LSB=2; Exp=1}
			@{Name="FM_CPU0_BMC_PROCHOT_LVC1_N"   ; MSB=1; LSB=1; Exp=1}
			@{Name="FM_CPU1_BMC_PROCHOT_LVC1_N"   ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x6A = @{
		Name = "FASTPROCHOT / PDB ALERT"
	
		Fields = @(
	
			@{Name="FASTPROCHOT_CURRENT_ALERT_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="FASTPROCHOT_VOLTAGE_ALERT_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="POWER_FAIL_N"                ; MSB=5; LSB=5; Exp=1}
			@{Name="PDB_ALERT1_N"                ; MSB=4; LSB=4; Exp=1}
			@{Name="PDB_ALERT2_N"                ; MSB=3; LSB=3; Exp=1}
			@{Name="PDB_ALERT3_N"                ; MSB=2; LSB=2; Exp=1}
			@{Name="PU_CPU0_DAM_PLD"             ; MSB=1; LSB=1; Exp=0}
			@{Name="Reserved0"                   ; MSB=0; LSB=0; Exp=0}
	
		)
	}


    0x78 = @{
        Name = "JIF Switch"
    
        Fields = @(
    
            @{Name="iFM_CPU0_JTAG_CTRL_EN_R"   ; MSB=7; LSB=7; Exp=1}
            @{Name="iFM_CPU1_JTAG_CTRL_EN_R"   ; MSB=6; LSB=6; Exp=1}
            @{Name="iFM_TDO_ISO_SW_R"          ; MSB=5; LSB=5; Exp=1}
            @{Name="iFM_TDO_MUX_SEL_R"         ; MSB=4; LSB=4; Exp=0}
            @{Name="iFM_UART2_FPGA_SELECT"     ; MSB=3; LSB=3; Exp=0}
            @{Name="iFM_USB_CPU_FPGA_SELECT"   ; MSB=2; LSB=2; Exp=0}
            @{Name="Reserved1"                 ; MSB=1; LSB=1; Exp=0}
            @{Name="Reserved0"                 ; MSB=0; LSB=0; Exp=0}
    
        )
    }
    
    0x7B = @{
        Name = "ARM JTAG ICE topology allowed for BMC debugging"
    
        Fields = @(
    
            @{Name="iFM_USB_FNL_OC_R_N" ; MSB=7; LSB=7; Exp=1}
            @{Name="iRST_USBCTL_PERST_N"; MSB=6; LSB=6; Exp=1}
    
        )
    }
    
    0x7E = @{
        Name = "BMC / PDB / RM Control"
    
        Fields = @(
    
            @{Name="iRST_DBP_RST_CO_P3V3_N"     ; MSB=7; LSB=7; Exp=0}
            @{Name="iFM_DBP_PRESENT_N"          ; MSB=6; LSB=6; Exp=1}
            @{Name="iPDB_ALERT3_EN_N"           ; MSB=5; LSB=5; Exp=1}
            @{Name="iBMC_PWRCAP_N"              ; MSB=4; LSB=4; Exp=1}
            @{Name="iBMC_FORCE_NM_THROTTLE_EN_N"; MSB=3; LSB=3; Exp=1}
            @{Name="iRM_THROTTLE_EN_N"          ; MSB=2; LSB=2; Exp=0}
            @{Name="iPMB_ALERT_EN_N"            ; MSB=1; LSB=1; Exp=1}
            @{Name="iPBREAK_EN_N"               ; MSB=0; LSB=0; Exp=1}
    
        )
    }
	0x81 = @{
		Name = "SMB / THROTTLE / PWRBRK"
	
		Fields = @(
	
			@{Name="iSMB_EXPANDER_RST_N"     ; MSB=7; LSB=7; Exp=1}
			@{Name="iRST_PCIE_SMB_N"         ; MSB=6; LSB=6; Exp=1}
			@{Name="Reserved5"               ; MSB=5; LSB=5; Exp=0}
			@{Name="Reserved4"               ; MSB=4; LSB=4; Exp=0}
			@{Name="iFM_PWRBRK_N"            ; MSB=3; LSB=3; Exp=1}
			@{Name="iGLB_THROTTLE_R_N_S_All" ; MSB=2; LSB=2; Exp=1}
			@{Name="oFM_SYS_THROTTLE_N"      ; MSB=1; LSB=1; Exp=1}
			@{Name="GLB_PWRBRK_R_N_S_All"    ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0x84 = @{
		Name = "HSC GPIO / IRQ"
	
		Fields = @(
	
			@{Name="iHSC_GPIO1_CPLD_N" ; MSB=7; LSB=7; Exp=1}
			@{Name="iHSC_GPIO2_CPLD_N" ; MSB=6; LSB=6; Exp=1}
			@{Name="iIRQ_HSC_FAULT_N"  ; MSB=5; LSB=5; Exp=1}
	
		)
	}
	
	0x87 = @{
		Name = "JTAG BMC PLD"
	
		Fields = @(
	
			@{Name="iJTAG_BMC_PLD_NRST_N" ; MSB=7; LSB=7; Exp=0}
			@{Name="iJTAG_BMC_PLD_SRST_N" ; MSB=6; LSB=6; Exp=1}
	
		)
	}

	0x90 = @{
		Name = "VR Fault Registers"
	
		Fields = @(
	
			@{Name="vr_fail_all_or"       ; MSB=7; LSB=7; Exp=0}
			@{Name="p1v8_aux_fail"        ; MSB=6; LSB=6; Exp=0}
			@{Name="p1v05_aux_fail"       ; MSB=5; LSB=5; Exp=0}
			@{Name="pvccfa_ehv_cpu0_fail" ; MSB=4; LSB=4; Exp=0}
			@{Name="pvccfa_ehv_cpu1_fail" ; MSB=3; LSB=3; Exp=0}
			@{Name="pvnn_main_cpu0_fail"  ; MSB=2; LSB=2; Exp=0}
			@{Name="pvnn_main_cpu1_fail"  ; MSB=1; LSB=1; Exp=0}
			@{Name="p12v_main_fail"       ; MSB=0; LSB=0; Exp=0}
	
		)
	}
	
	0x91 = @{
		Name = "VR Fault Registers"
	
		Fields = @(
	
			@{Name="p12v_edsff_fail"             ; MSB=7; LSB=7; Exp=0}
			@{Name="p3v3_main_fail"              ; MSB=6; LSB=6; Exp=0}
			@{Name="pvccd0_hv_cpu0_fail"         ; MSB=5; LSB=5; Exp=0}
			@{Name="pvccd1_hv_cpu0_fail"         ; MSB=4; LSB=4; Exp=0}
			@{Name="pvccd0_hv_cpu1_fail"         ; MSB=3; LSB=3; Exp=0}
			@{Name="pvccd1_hv_cpu1_fail"         ; MSB=2; LSB=2; Exp=0}
			@{Name="pvccfa_ehv_fivra_cpu0_fail"  ; MSB=1; LSB=1; Exp=0}
			@{Name="pvccfa_ehv_fivra_cpu1_fail"  ; MSB=0; LSB=0; Exp=0}
	
		)
	}
	
	0x92 = @{
		Name = "VR Fault Registers"
	
		Fields = @(
	
			@{Name="pvccinf_cpu0_fail" ; MSB=7; LSB=7; Exp=0}
			@{Name="pvccinf_cpu1_fail" ; MSB=6; LSB=6; Exp=0}
			@{Name="pvccin_cpu0_fail"  ; MSB=5; LSB=5; Exp=0}
			@{Name="pvccin_cpu1_fail"  ; MSB=4; LSB=4; Exp=0}
	
		)
	}	
	0xA0 = @{
		Name = "Internal State"

		Fields = @(

			@{
				Name = "Determine CPU SKU or 1P/2P/Mismatched/No CPU"
				MSB = 7
				LSB = 4
				Exp = @(0x4)
	
				Meaning = @{
					0x0 = "Fail"
					0x1 = "Fail"
					0x2 = "Fail"
					0x3 = "Fail"
					0x4 = "Pass"
				}
			}
	
			@{
				Name = "System Power On Status"
				MSB = 3
				LSB = 0
				Exp = @(0xF)
	
				Meaning = @{
					0x0 = "Default"
					0x1 = "SCM AUX (HPM STBY EN)"
					0x2 = "BMC Boot (HPM STBY_RSTn)"
					0x3 = "CPU AUX OK (S5 state)"
					0x4 = "Enable main power"
					0x5 = "CPU MEM PWR"
					0x6 = "CPU S0 PWROK"
					0x7 = "CPU PWRGD"
					0x8 = "CPU RESET"
					0x9 = "ERROR state"
					0xA = "ST ADR"
					0xC = "ST HANDSHAKE_0"
					0xF = "Platform on (S0 state)"
				}
			}
		)
	}

	0xA1 = @{
		Name = "CPU AUX Status"
	
		Fields = @(
	
			@{
				Name = "CPU0_AUX_status(cpu_aux)"
				MSB = 7
				LSB = 5
				Exp = @(0x4)
	
				Meaning = @{
					0x0 = "INIT"					
					0x1 = "PVCC3V3_AUX"
					0x2 = "PVCCFA_EHV"
					0x3 = "PVNN_MAIN"						
					0x4 = "CPU_AUX_ON_Success"
					0x5 = "PVCCFA_EHV_OFF"					
					0x6 = "PVNN_MAIN_OFF"					
					0x7 = "PWROFF_TIMEOUT"					
				}
			}
	
			@{
				Name = "CPU1_AUX_status(cpu_aux)"
				MSB = 4
				LSB = 2
				Exp = @(0x4)
	
				Meaning = @{
					0x0 = "INIT"					
					0x1 = "PVCC3V3_AUX"
					0x2 = "PVCCFA_EHV"
					0x3 = "PVNN_MAIN"						
					0x4 = "CPU_AUX_ON_Success"
					0x5 = "PVCCFA_EHV_OFF"					
					0x6 = "PVNN_MAIN_OFF"					
					0x7 = "PWROFF_TIMEOUT"	
				}
			}
		)
	}
	
	0xA2 = @{
		Name = "PSU Status"
	
		Fields = @(
	
			@{
				Name = "PSU Status"
				MSB = 7
				LSB = 4
				Exp = @(0x4)
	
				Meaning = @{
					0x0 = "INIT"					
					0x1 = "S5_12V"
					0x2 = "ON"
					0x3 = "P3V3_OK"						
					0x4 = "Done"
					0x5 = "PWR_OFF"					
					0x6 = "PSU_FAULT"					
					0x7 = "P3V3_FAULT"	
				}
			}
		)
	}
	
	0xA3 = @{
		Name = "CPU Memory Power Rail Status"
	
		Fields = @(
	
			@{
				Name = "CPU0 Memory Power Rail Status"
				MSB = 7
				LSB = 4
				Exp = @(0x5)
	
				Meaning = @{
					0x0 = "INIT"					
					0x1 = "PVCCD_HV"
					0x2 = "PVCCFA_EHV_FIVRA"
					0x3 = "PVCCINFAON"						
					0x4 = "PVCCIN"
					0x5 = "DONE"				
					0x6 = "PVCCIN_OFF"					
					0x8 = "PVCCINFAON_OFF"
					0x9 = "PVCCFA_EHV_FIVRA_OFF"	
					0xA = "PVCCD_HV_OFF"	
					0xB = "PWROFF_TIMEOUT"			
				}
			}
	
			@{
				Name = "CPU1 Memory Power Rail Status"
				MSB = 3
				LSB = 0
				Exp = @(0x5)
	
				Meaning = @{
					0x0 = "INIT"					
					0x1 = "PVCCD_HV"
					0x2 = "PVCCFA_EHV_FIVRA"
					0x3 = "PVCCINFAON"						
					0x4 = "PVCCIN"
					0x5 = "DONE"				
					0x6 = "PVCCIN_OFF"					
					0x8 = "PVCCINFAON_OFF"
					0x9 = "PVCCFA_EHV_FIVRA_OFF"	
					0xA = "PVCCD_HV_OFF"	
					0xB = "PWROFF_TIMEOUT"			
				}
			}
		)
	}
	
	0xA4 = @{
		Name = "Reserved"
	
		Fields = @(
	
			@{Name="Reserved_H" ; MSB=7; LSB=5; Exp=0x7}
			@{Name="Reserved_L" ; MSB=4; LSB=2; Exp=0x7}
	
		)
	}
	
	0xA5 = @{
		Name = "root state -- pwr_stat"
	
		Fields = @(
	
			@{
				Name = "root state -- pwr_stat"
				MSB = 7
				LSB = 0
				Exp = @(0xFF)
	
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
	0xA6 = @{
		Name = "SGPIO Link Status"
	
		Fields = @(
	
			@{
				Name = "CPLD1-SCM SGPIO Link Status"
				MSB = 7
				LSB = 6
				Exp = @(0x3)
	
				Meaning = @{
					0x3 = "Link OK"
				}
			}
		)
	}
	
	0xA7 = @{
		Name = "XDP mode status"
	
		Fields = @(
	
			@{
				Name = "pmode_state"
				MSB = 7
				LSB = 4
				Exp = @(0x0)
	
				Meaning = @{
					0x0 = "Normal"
				}
			}
	
			@{
				Name = "counter_state - Pmode.sv"
				MSB = 3
				LSB = 3
				Exp = @(0x0)
	
				Meaning = @{
					0x0 = "Idle"
				}
			}
	
			@{
				Name = "transmit_a_pmode_packet_state"
				MSB = 2
				LSB = 1
				Exp = @(0x0)
	
				Meaning = @{
					0x0 = "Idle"
				}
			}
		)
	}
	
	0xA8 = @{
		Name = "SGPIO Link Status (CPLD1-CPLD2)(CPLD1-PDB)"
	
		Fields = @(
	
			@{
				Name = "pdb_alert_en_n_ovr"
				MSB = 2
				LSB = 2
				Exp = @(0x0)
	
				Meaning = @{
					0x0 = "Normal"
				}
			}
	
			@{
				Name = "isgpio_hpm1_to_glb_link"
				MSB = 1
				LSB = 1
				Exp = @(0x1)
	
				Meaning = @{
					0x1 = "Link OK"
				}
			}
	
			@{
				Name = "isgpio_hpm1_to_hpm2_link"
				MSB = 0
				LSB = 0
				Exp = @(0x1)
	
				Meaning = @{
					0x1 = "Link OK"
				}
			}
		)
	}
	
	0xA9 = @{
		Name = "SGPIO Link CRC ERROR (CPLD1-CPLD2)"
	
		Fields = @(
	
			@{
				Name = "SGPIO Link CRC ERROR"
				MSB = 7
				LSB = 0
				Exp = @(0x00)
	
				Meaning = @{
					0x00 = "Link Stable"
				}
			}
		)
	}
	
	0xAA = @{
		Name = "SGPIO Link good cnt (CPLD1-CPLD2)"
	
		Fields = @(
	
			@{
				Name = "SGPIO Link good cnt"
				MSB = 7
				LSB = 0
	
				ExpGT = 0
				Meaning = @{
					0 = "Link unstable"
				}
				
				
			}
		)
	}	
	
	
	
	0xAB = @{
		Name = "SGPIO Link CRC ERROR (CPLD1-PDB)"
	
		Fields = @(
	
			@{
				Name = "SGPIO Link CRC ERROR"
				MSB = 7
				LSB = 0
				Exp = @(0x00)
	
				Meaning = @{
					0x00 = "Link Stable"
				}
			}
		)
	}
	
	0xAC = @{
		Name = "SGPIO Link good cnt (CPLD1-PDB)"
	
		Fields = @(
	
			@{
				Name = "SGPIO Link good cnt"
				MSB = 7
				LSB = 0
	
				ExpGT = 0
				Meaning = @{
					0 = "Link unstable"
				}
			}
		)
	}			
	
	0xAD = @{
		Name = "CXL ThermalTrip"
	
		Fields = @(
	
			@{
				Name = "P12V_CXL_PG"
				MSB = 2
				LSB = 2
				Exp = @(0x0)
	
				Meaning = @{
					0x0 = "Power Good"
				}
			}
	
			@{
				Name = "CXL_ThermalTrip_cut_power"
				MSB = 1
				LSB = 1
				Exp = @(0x1)
	
				Meaning = @{
					0x1 = "Default"
				}
			}
		)
	}
	0xB0 = @{
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
	
	0xD4 = @{
		Name = "Misc Control"
	
		Fields = @(
	
			@{Name="FM_BIOS_POST_CMPLT_BMC_N" ; MSB=7; LSB=7; Exp=0}
			@{Name="iA_P3V_BAT_SCALED_EN_N"  ; MSB=6; LSB=6; Exp=1}
			@{Name="iIRQ_CPLD_BMC_R_N"       ; MSB=5; LSB=5; Exp=1}
			@{Name="iRST_BMC_RTCRST_R"       ; MSB=4; LSB=4; Exp=0}
			@{Name="iFM_BMC_EDAF_3V3_SEL"    ; MSB=3; LSB=3; Exp=1}
			@{Name="iFM_SPD_SWITCH_CTRL_N"   ; MSB=2; LSB=2; Exp=0}
			@{Name="Reserved1"               ; MSB=1; LSB=1; Exp=0}
			@{Name="iLED2_BMC_CPLD_N"        ; MSB=0; LSB=0; Exp=1}
	
		)
	}
	
	0xD7 = @{
		Name = "PORT1 / LED"
	
		Fields = @(
	
			@{Name="iPORT1_RST_N"      ; MSB=7; LSB=7; Exp=1}
			@{Name="Reserved6"         ; MSB=6; LSB=6; Exp=1}
			@{Name="Reserved5"         ; MSB=5; LSB=5; Exp=1}
			@{Name="Reserved4"         ; MSB=4; LSB=4; Exp=1}
			@{Name="Reserved3"         ; MSB=3; LSB=3; Exp=1}
			@{Name="Reserved2"         ; MSB=2; LSB=2; Exp=1}
			@{Name="Reserved1"         ; MSB=1; LSB=1; Exp=1}
			@{Name="iLED_BOOT_READY_N" ; MSB=0; LSB=0; Exp=0}
	
		)
	}
	
	0xFD = @{
		Name = "Firmware Version"

		Fields = @(

			@{
				Name = "Firmware"
	
				MSB = 7
				LSB = 0
	
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