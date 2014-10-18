# some things are from ./linux-xlnx/arch/arm/boot/dts/zynq_zybo.dts

###############################################################################
# PS
###############################################################################

# change this in the uart section
		ps7_uart_1: serial@e0001000 {
			clock-names = "uart_clk", "pclk";
			clocks = <&clkc 24>, <&clkc 41>;
			compatible = "xlnx,xuartps";
			current-speed = <115200>;
			device_type = "serial";
			interrupt-parent = <&ps7_scugic_0>;
			interrupts = <0 50 4>;
			port-number = <0>;
			reg = <0xe0001000 0x1000>;
			xlnx,has-modem = <0x0>;
		} ;

# change this in the ethernet section, of course keep the previous address...
		ps7_ethernet_0: ps7-ethernet@e000b000 {
			#address-cells = <1>;
			#size-cells = <0>;
			clock-names = "ref_clk", "aper_clk";
			clocks = <&clkc 13>, <&clkc 30>;
			compatible = "xlnx,ps7-ethernet-1.00.a";
			interrupt-parent = <&ps7_scugic_0>;
			interrupts = <0 22 4>;
			phy-handle = <&phy0>;
			phy-mode = "rgmii-id";
			reg = <0xe000b000 0x1000>;
			xlnx,eth-mode = <0x1>;
			xlnx,has-mdio = <0x1>;
			xlnx,ptp-enet-clock = <108333336>;
			mdio {
				#address-cells = <1>;
				#size-cells = <0>;
				phy0: phy@1 {
					compatible = "realtek,RTL8211E";
					device_type = "ethernet-phy";
					reg = <1>;
				} ;
			} ;
		} ;

# change this in the usb_0 section
		ps7_usb_0: ps7-usb@e0002000 {
			clocks = <&clkc 28>;
			compatible = "xlnx,ps7-usb-1.00.a", "xlnx,zynq-usb-1.00.a";
			dr_mode = "host";
			interrupt-parent = <&ps7_scugic_0>;
			interrupts = <0 21 4>;
			phy_type = "ulpi";
			reg = <0xe0002000 0x1000>;
			usb-reset = <&ps7_gpio_0 46 0>;
		} ;


###############################################################################
# PL
###############################################################################

# change this in the vdma section
		axi_vdma_0: axi-vdma@43000000 {
			compatible = "xlnx,axi-vdma-1.00.a";
			interrupt-parent = <&ps7_scugic_0>;
			interrupts = <0 59 4>;
			reg = <0x43000000 0x10000>;
			#address-cells = <1>;
			#size-cells = <1>;
			ranges = <0x43000000 0x43000000 0x10000>;
			xlnx,flush-fsync = <0x1>;
			xlnx,num-fstores = <0x3>;
			dma-channel@43000000 {
				compatible = "xlnx,axi-vdma-mm2s-channel";
				xlnx,datawidth = <0x20>;
				xlnx,device-id = <0x0>;
				xlnx,genlock-mode = <0x1>;
			};
		} ;
		axi_vdma_1: axi-vdma@43010000 {
			compatible = "xlnx,axi-vdma-1.00.a";
			interrupt-parent = <&ps7_scugic_0>;
			interrupts = <0 59 4>;
			reg = <0x43010000 0x10000>;
			#address-cells = <1>;
			#size-cells = <1>;
			ranges = <0x43010000 0x43010000 0x10000>;
			xlnx,flush-fsync = <0x1>;
			xlnx,num-fstores = <0x3>;
			dma-channel@43010000 {
				compatible = "xlnx,axi-vdma-mm2s-channel";
				xlnx,datawidth = <0x20>;
				xlnx,device-id = <0x1>;
				xlnx,genlock-mode = <0x1>;
			} ;
		} ;

