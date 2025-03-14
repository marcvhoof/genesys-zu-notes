#Pavel's setup
# clock input, connected to sysclk
set_property IOSTANDARD LVCMOS18 [get_ports clk_i]
set_property PACKAGE_PIN E12 [get_ports clk_i]

### LED
set_property IOSTANDARD LVCMOS33 [get_ports {led_o[*]}]
set_property SLEW SLOW [get_ports {led_o[*]}]
set_property DRIVE 4 [get_ports {led_o[*]}]

set_property PACKAGE_PIN L14 [get_ports {led_o[0]}]
set_property PACKAGE_PIN L13 [get_ports {led_o[1]}]
set_property PACKAGE_PIN K14 [get_ports {led_o[2]}]
set_property PACKAGE_PIN J14 [get_ports {led_o[3]}]

###RGB LED
set_property IOSTANDARD LVCMOS12 [get_ports {ledRGB_o[*]}]
set_property SLEW SLOW [get_ports {ledRGB_o[*]}]
set_property DRIVE 4 [get_ports {ledRGB_o[*]}]

set_property PACKAGE_PIN A8 [get_ports {ledRGB_o[0]}]
set_property PACKAGE_PIN B9 [get_ports {ledRGB_o[1]}]
set_property PACKAGE_PIN C9 [get_ports {ledRGB_o[2]}]

### BUTTONS
set_property IOSTANDARD LVCMOS18 [get_ports {pl_buttons[*]}]

set_property PACKAGE_PIN A12 [get_ports {pl_buttons[0]}]
set_property PACKAGE_PIN F12 [get_ports {pl_buttons[1]}]
set_property PACKAGE_PIN J12 [get_ports {pl_buttons[2]}]
set_property PACKAGE_PIN H12 [get_ports {pl_buttons[3]}]
set_property PACKAGE_PIN B10 [get_ports {pl_buttons[4]}]

### SWITCHES
set_property IOSTANDARD LVCMOS33 [get_ports {pl_switches[*]}]

set_property PACKAGE_PIN AB15 [get_ports {pl_switches[0]}]
set_property PACKAGE_PIN W12 [get_ports {pl_switches[1]}]
set_property PACKAGE_PIN Y13 [get_ports {pl_switches[2]}]
set_property PACKAGE_PIN AB14 [get_ports {pl_switches[3]}]

### PMOD
set_property IOSTANDARD LVCMOS33 [get_ports {pmod_a_tri_io[*]}]

set_property PACKAGE_PIN AE13 [get_ports {pmod_a_tri_io[0]}]
set_property PACKAGE_PIN AG14 [get_ports {pmod_a_tri_io[1]}]
set_property PACKAGE_PIN AH14 [get_ports {pmod_a_tri_io[2]}]
set_property PACKAGE_PIN AG13 [get_ports {pmod_a_tri_io[3]}]
set_property PACKAGE_PIN AE14 [get_ports {pmod_a_tri_io[4]}]
set_property PACKAGE_PIN AF13 [get_ports {pmod_a_tri_io[5]}]
set_property PACKAGE_PIN AE15 [get_ports {pmod_a_tri_io[6]}]
set_property PACKAGE_PIN AH13 [get_ports {pmod_a_tri_io[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {pmod_b_tri_io[*]}]

set_property PACKAGE_PIN E13 [get_ports {pmod_b_tri_io[0]}]
set_property PACKAGE_PIN G13 [get_ports {pmod_b_tri_io[1]}]
set_property PACKAGE_PIN B13 [get_ports {pmod_b_tri_io[2]}]
set_property PACKAGE_PIN D14 [get_ports {pmod_b_tri_io[3]}]
set_property PACKAGE_PIN F13 [get_ports {pmod_b_tri_io[4]}]
set_property PACKAGE_PIN C13 [get_ports {pmod_b_tri_io[5]}]
set_property PACKAGE_PIN C14 [get_ports {pmod_b_tri_io[6]}]
set_property PACKAGE_PIN A13 [get_ports {pmod_b_tri_io[7]}]

## Audio CODEC I2S, I2C
set_property PACKAGE_PIN A11 [get_ports aud_scl_io]
set_property PACKAGE_PIN D12 [get_ports aud_sda_io]
set_property PACKAGE_PIN A10 [get_ports aud_lrclk]
set_property PACKAGE_PIN C12 [get_ports aud_bclk]
set_property PACKAGE_PIN C11 [get_ports aud_mclk]
set_property PACKAGE_PIN B11 [get_ports aud_adc_sdata]
set_property PACKAGE_PIN D11 [get_ports aud_dac_sdata]
set_property IOSTANDARD LVCMOS18 [get_ports aud_*]

##DisplayPort AUX channel over EMIO
set_property PACKAGE_PIN K12 [get_ports dp_aux_din]
set_property IOSTANDARD LVCMOS18 [get_ports dp_aux_din]
set_property PACKAGE_PIN K13 [get_ports {dp_aux_doe}]
set_property IOSTANDARD LVCMOS18 [get_ports {dp_aux_doe}]
set_property PACKAGE_PIN J11 [get_ports dp_aux_dout]
set_property IOSTANDARD LVCMOS18 [get_ports dp_aux_dout]
set_property PACKAGE_PIN J10 [get_ports dp_aux_hotplug_detect]
set_property IOSTANDARD LVCMOS18 [get_ports dp_aux_hotplug_detect]

##EMIO
set_property PACKAGE_PIN B8 [get_ports { gpio_emio_tri_io[1] }]
set_property IOSTANDARD LVCMOS12 [get_ports { gpio_emio_tri_io[1] }]
set_property DRIVE 6 [get_ports { gpio_emio_tri_io[1] }]

set_property PACKAGE_PIN A9 [get_ports { gpio_emio_tri_io[2] }]
set_property IOSTANDARD LVCMOS12 [get_ports { gpio_emio_tri_io[2] }]
set_property DRIVE 6 [get_ports { gpio_emio_tri_io[2] }]

set_property -dict { PACKAGE_PIN F6 IOSTANDARD LVCMOS12 DRIVE 6 } [get_ports { gpio_emio_tri_io[0] }]

##VADJ
set_property PACKAGE_PIN AC14 [get_ports {vadj_level_0}]
set_property PACKAGE_PIN AC13 [get_ports {vadj_level_1}]
set_property PACKAGE_PIN G10 [get_ports {vadj_auton}]
set_property IOSTANDARD LVCMOS33 [get_ports {vadj_level_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {vadj_level_1}]
set_property IOSTANDARD LVCMOS18 [get_ports {vadj_auton}]

##UART
set_property -dict { PACKAGE_PIN E15    IOSTANDARD LVCMOS33     PULLUP true} [get_ports {UART_CTL_rxd}]
set_property -dict { PACKAGE_PIN E14    IOSTANDARD LVCMOS33     PULLUP true} [get_ports {UART_CTL_txd}]

### GZU ZMOD A - ADC
### FMC2ZMOD A - ADC
### FMC2ZMOD B - ADC

### FMC2ZMOD A - ADC
set_property IOSTANDARD LVCMOS18 [get_ports {adc_data_i[*]}]

set_property PACKAGE_PIN AC4 [get_ports {adc_data_i[0]}]
set_property PACKAGE_PIN AD2 [get_ports {adc_data_i[1]}]
set_property PACKAGE_PIN K1 [get_ports {adc_data_i[2]}]
set_property PACKAGE_PIN R7 [get_ports {adc_data_i[3]}]
set_property PACKAGE_PIN T7 [get_ports {adc_data_i[4]}]
set_property PACKAGE_PIN J5 [get_ports {adc_data_i[5]}]
set_property PACKAGE_PIN N7 [get_ports {adc_data_i[6]}]
set_property PACKAGE_PIN R8 [get_ports {adc_data_i[7]}]
set_property PACKAGE_PIN J7 [get_ports {adc_data_i[8]}]
set_property PACKAGE_PIN L1 [get_ports {adc_data_i[9]}]
set_property PACKAGE_PIN P7 [get_ports {adc_data_i[10]}]
set_property PACKAGE_PIN K8 [get_ports {adc_data_i[11]}]
set_property PACKAGE_PIN AG9 [get_ports {adc_data_i[12]}]
set_property PACKAGE_PIN AB4 [get_ports {adc_data_i[13]}]

set_property IOSTANDARD LVCMOS18 [get_ports adc_dco_i]
set_property PACKAGE_PIN M6 [get_ports adc_dco_i]

set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports adc_clk_p_o]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports adc_clk_n_o]
set_property PACKAGE_PIN H4 [get_ports adc_clk_p_o]
set_property PACKAGE_PIN H3 [get_ports adc_clk_n_o]

set_property IOSTANDARD LVCMOS18 [get_ports {adc_spi_o[*]}]

set_property PACKAGE_PIN K2 [get_ports {adc_spi_o[0]}]
set_property PACKAGE_PIN J2 [get_ports {adc_spi_o[1]}]
set_property PACKAGE_PIN AF1 [get_ports {adc_spi_o[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports {adc_cfg_o[*]}]

set_property PACKAGE_PIN J6 [get_ports {adc_cfg_o[0]}]
set_property PACKAGE_PIN H6 [get_ports {adc_cfg_o[1]}]
set_property PACKAGE_PIN K4 [get_ports {adc_cfg_o[2]}]
set_property PACKAGE_PIN K3 [get_ports {adc_cfg_o[3]}]
set_property PACKAGE_PIN K9 [get_ports {adc_cfg_o[4]}]
set_property PACKAGE_PIN J9 [get_ports {adc_cfg_o[5]}]
set_property PACKAGE_PIN R6 [get_ports {adc_cfg_o[6]}]
set_property PACKAGE_PIN T6 [get_ports {adc_cfg_o[7]}]
set_property PACKAGE_PIN M8 [get_ports {adc_cfg_o[8]}]
set_property PACKAGE_PIN L8 [get_ports {adc_cfg_o[9]}]

### FMC2ZMOD B - DAC
set_property IOSTANDARD LVCMOS18 [get_ports {dac_data_o[*]}]

set_property PACKAGE_PIN P6 [get_ports {dac_data_o[0]}]
set_property PACKAGE_PIN N6 [get_ports {dac_data_o[1]}]
set_property PACKAGE_PIN AC7 [get_ports {dac_data_o[2]}]
set_property PACKAGE_PIN T8 [get_ports {dac_data_o[3]}]
set_property PACKAGE_PIN J4 [get_ports {dac_data_o[4]}]
set_property PACKAGE_PIN H7 [get_ports {dac_data_o[5]}]
set_property PACKAGE_PIN AG8 [get_ports {dac_data_o[6]}]
set_property PACKAGE_PIN AF8 [get_ports {dac_data_o[7]}]
set_property PACKAGE_PIN AH7 [get_ports {dac_data_o[8]}]
set_property PACKAGE_PIN AH8 [get_ports {dac_data_o[9]}]
set_property PACKAGE_PIN AH4 [get_ports {dac_data_o[10]}]
set_property PACKAGE_PIN AG4 [get_ports {dac_data_o[11]}]
set_property PACKAGE_PIN AF6 [get_ports {dac_data_o[12]}]
set_property PACKAGE_PIN AF7 [get_ports {dac_data_o[13]}]

set_property IOSTANDARD LVCMOS18 [get_ports dac_clk_o]
set_property PACKAGE_PIN L7 [get_ports dac_clk_o]

set_property IOSTANDARD LVCMOS18 [get_ports {dac_spi_o[*]}]

set_property PACKAGE_PIN AE9 [get_ports {dac_spi_o[0]}]
set_property PACKAGE_PIN AH3 [get_ports {dac_spi_o[1]}]
set_property PACKAGE_PIN AE8 [get_ports {dac_spi_o[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports {dac_cfg_o[*]}]

set_property PACKAGE_PIN AB7 [get_ports {dac_cfg_o[0]}]
set_property PACKAGE_PIN AH2 [get_ports {dac_cfg_o[1]}]
set_property PACKAGE_PIN AH1 [get_ports {dac_cfg_o[2]}]
set_property PACKAGE_PIN AG3 [get_ports {dac_cfg_o[3]}]

