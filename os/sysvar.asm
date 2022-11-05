; =============================================================================
; BareMetal -- a 64-bit OS written in Assembly for x86-64 systems
; Copyright (C) 2008-2016 Return Infinity -- see LICENSE.TXT
;
; System Variables
; =============================================================================

align 16

; Memory addresses
ahci_cmdlist:		equ 0x0000000000070000	; 4096 bytes	0x070000 -> 0x070FFF
ahci_receivedfis:	equ 0x0000000000071000	; 4096 bytes	0x071000 -> 0x071FFF
ahci_cmdtable:		equ 0x0000000000072000	; 57344 bytes	0x072000 -> 0x07FFFF
os_temp_string:		equ 0x0000000000080400	; 1024 bytes	0x080400 -> 0x0807FF
os_SystemVariables:	equ 0x0000000000110000	; 65536 bytes	0x110000 -> 0x11FFFF	Location of System Variables
os_temp:		equ 0x0000000000190000

; DQ - Starting at offset 0, increments by 8
ahci_base:		equ os_SystemVariables + 96

; DD - Starting at offset 256, increments by 4
ahci_port:		equ os_SystemVariables + 268
hd1_size:		equ os_SystemVariables + 272	; in MiB

; DB - Starting at offset 768, increments by 1
os_DiskEnabled:		equ os_SystemVariables + 783

;------------------------------------------------------------------------------

SYS64_CODE_SEL	equ 8		; defined by Pure64

; =============================================================================
; EOF
