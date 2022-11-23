## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]; 
create_clock -add -name sys_clk -period 10.00 -waveform {0 5} [get_ports { sys_clock }];

## Reset signal
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { resetn }]; 

## USB-RS232 Interface
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_rxd }]; 
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_txd }]; 

## CSKY JTAG Interface
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { csky_jtag_tck }]; 
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets csky_jtag_tck_IBUF]
set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { csky_jtag_trst }]; 
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { csky_jtag_tms }]; 
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { csky_jtag_tdo }]; 
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { csky_jtag_tdi }]; 
