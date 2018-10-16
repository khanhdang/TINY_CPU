set_property -dict  {PACKAGE_PIN  R3    IOSTANDARD  DIFF_SSTL15 DIFF_TERM TRUE} [get_ports CLK_P]
set_property -dict  {PACKAGE_PIN  P3    IOSTANDARD  DIFF_SSTL15 DIFF_TERM TRUE} [get_ports CLK_N]

set_property -dict  {PACKAGE_PIN  M26   IOSTANDARD  LVCMOS33} [get_ports LED[0]]    ; ## GPIO_LED_0_LS
set_property -dict  {PACKAGE_PIN  T24   IOSTANDARD  LVCMOS33} [get_ports LED[1]]   ; ## GPIO_LED_1_LS
set_property -dict  {PACKAGE_PIN  T25   IOSTANDARD  LVCMOS33} [get_ports LED[2]]   ; ## GPIO_LED_2_LS
set_property -dict  {PACKAGE_PIN  R26   IOSTANDARD  LVCMOS33} [get_ports LED[3]]   ; ## GPIO_LED_3_LS

set_property -dict  {PACKAGE_PIN  L20   IOSTANDARD  LVCMOS33} [get_ports LCD_E]   ; ## lcd_e
set_property -dict  {PACKAGE_PIN  L23   IOSTANDARD  LVCMOS33} [get_ports LCD_RS]   ; ## lcd_rs
set_property -dict  {PACKAGE_PIN  L24   IOSTANDARD  LVCMOS33} [get_ports LCD_RW]   ; ## lcd_rw
set_property -dict  {PACKAGE_PIN  L22   IOSTANDARD  LVCMOS33} [get_ports SF_D[11]]   ; ## lcd_db[7]
set_property -dict  {PACKAGE_PIN  M25   IOSTANDARD  LVCMOS33} [get_ports SF_D[10]]   ; ## lcd_db[6]
set_property -dict  {PACKAGE_PIN  M24   IOSTANDARD  LVCMOS33} [get_ports SF_D[9]]   ; ## lcd_db[5]
set_property -dict  {PACKAGE_PIN  L25   IOSTANDARD  LVCMOS33} [get_ports SF_D[8]]   ; ## lcd_db[4]

set_property -dict  {PACKAGE_PIN  R8    IOSTANDARD  SSTL15}   [get_ports SW[0]]    ; ## GPIO_DIP_SW0
set_property -dict  {PACKAGE_PIN  P8    IOSTANDARD  SSTL15}   [get_ports SW[1]]    ; ## GPIO_DIP_SW1
set_property -dict  {PACKAGE_PIN  R7    IOSTANDARD  SSTL15}   [get_ports SW[2]]    ; ## GPIO_DIP_SW2
set_property -dict  {PACKAGE_PIN  R6    IOSTANDARD  SSTL15}   [get_ports SW[3]]    ; ## GPIO_DIP_SW3

set_property -dict  {PACKAGE_PIN  P6    IOSTANDARD  LVCMOS15} [get_ports BTN_NORTH]    ; ## GPIO_SW_N
set_property -dict  {PACKAGE_PIN  U5    IOSTANDARD  SSTL15}   [get_ports BTN_EAST]    ; ## GPIO_SW_E
set_property -dict  {PACKAGE_PIN  T5    IOSTANDARD  SSTL15}   [get_ports BTN_SOUTH]    ; ## GPIO_SW_S
set_property -dict  {PACKAGE_PIN  R5    IOSTANDARD  SSTL15}   [get_ports BTN_WEST]    ; ## GPIO_SW_W
set_property -dict  {PACKAGE_PIN  U6    IOSTANDARD  SSTL15}   [get_ports BTN_CENTER]    ; ## GPIO_SW_C

set_property -dict {PACKAGE_PIN N21 IOSTANDARD LVCMOS33} [get_ports ROT_CENTER]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports ROT_A]
