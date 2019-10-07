# 1 "WarrenEProj2CS17.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 340 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "WarrenEProj2CS17.asm" 2
// Assembly code emitted by HLA compiler
// Version 1.104 build 20808 (prototype)
// HLA compiler written by Randall Hyde
// GAS compatible output






  .text


        .globl     QuitMain__hla_
        .globl     DfltExHndlr__hla_
        .globl     _HLAMain
        .globl     InstallSignals__hla_






  .data

        .align (2)
day__hla_1682 :.space     1
month__hla_1683 :.space     1
year__hla_1684 :.space     2
packedDate__hla_1685 :.space     4


 .data
 .globl _envp__hla_
 .globl _argc__hla_
 .globl _argv__hla_
_argc__hla_: .long 0
_argv__hla_: .long 0
_envp__hla_: .long 0




  .text


        .align (2)
len__hla_1688 :.long      0x23
        .long      0x23
str__hla_1688:

 .ascii "Ebony Warren - Project 1: Date Demo"
 .byte 0


        .align (2)
len__hla_1689 :.long      0x1
        .long      0x1
str__hla_1689:
 .byte 0xa
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1690 :.long      0x2e
        .long      0x2e
str__hla_1690:

 .ascii "Enter your birthdate (full year, month, day): "
 .byte 0

 .byte 0

        .align (2)
len__hla_1705 :.long      0x26
        .long      0x26
str__hla_1705:

 .ascii "Month value must be in the range 1..12"
 .byte 0

 .byte 0

        .align (2)
len__hla_1708 :.long      0x24
        .long      0x24
str__hla_1708:

 .ascii "Day value must be in the range 1..31"
 .byte 0

 .byte 0
 .byte 0
 .byte 0

        .align (2)
len__hla_1710 :.long      0x26
        .long      0x26
str__hla_1710:

 .ascii "Year value must be in the range 0-9999"
 .byte 0

 .byte 0

        .align (2)
len__hla_1711 :.long      0xf
        .long      0xf
str__hla_1711:

 .ascii "Packed data = $"
 .byte 0


        .align (2)
len__hla_1712 :.long      0x1d
        .long      0x1d
str__hla_1712:

 .ascii "The date is (day/month/year) "
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1713 :.long      0x1
        .long      0x1
str__hla_1713:

 .ascii "/"
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1714 :.long      0x23
        .long      0x23
str__hla_1714:

 .ascii "Ebony Warren - Project 2: Date Demo"
 .byte 0

InstallSignals__hla_:
        jmp        excepts_install_signals
DfltExHndlr__hla_:
        jmp        DefaultExceptionHandler__hla_


_HLAMain:
 .globl _main
_main:

        .byte      0x89 
        .byte      0xe0 
_findEnvp_$$_:

        .byte      0x83 
        .byte      0xc0 
        .byte      0x4 

        .byte      0x83 
        .byte      0x38 
        .byte      0x0 
        jne        _findEnvp_$$_

        .byte      0x83 
        .byte      0xc0 
        .byte      0x4 

        .byte      0xa3 
        .long      (_envp__hla_+0)

        .byte      0x8d 
        .byte      0x44 
        .byte      0x24 
        .byte      0x4 

        .byte      0xa3 
        .long      (_argv__hla_+0)

        .byte      0x8b 
        .byte      0x4 
        .byte      0x24 

        .byte      0xa3 
        .long      (_argc__hla_+0)
        call       BuildExcepts__hla_

        .byte      0x6a 
        .byte      0x0 

        .byte      0x89 
        .byte      0xe5 

        .byte      0x55 



        .byte      0x68 
        .long      str__hla_1688
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1689
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS

        .byte      0x50 
        call       STDIN_GETU16

        .word      0xa366
        .long      (year__hla_1684+0)
        call       STDIN_GETU8

        .byte      0xa2 
        .long      (month__hla_1683+0)
        call       STDIN_GETU8

        .byte      0xa2 
        .long      (day__hla_1682+0)

        .byte      0x58 

        .byte      0xb8 
        .long      0x0

        .byte      0xa3 
        .long      (packedDate__hla_1685+0)

        .byte      0x80 
        .byte      0x3d 
        .long      month__hla_1683
        .byte      0xc 
        ja         L1704__hla_

        .byte      0x80 
        .byte      0x3d 
        .long      month__hla_1683
        .byte      0x0 
        jne        false__hla_1703
L1704__hla_:

        .byte      0x68 
        .long      str__hla_1705
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1689
        call       STDOUT_PUTS
        jmp        endif__hla_1703
false__hla_1703:

        .byte      0x80 
        .byte      0x3d 
        .long      day__hla_1682
        .byte      0x1f 
        ja         L1707__hla_

        .byte      0x80 
        .byte      0x3d 
        .long      day__hla_1682
        .byte      0x0 
        jne        false__hla_1706
L1707__hla_:

        .byte      0x68 
        .long      str__hla_1708
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1689
        call       STDOUT_PUTS
        jmp        endif__hla_1703
false__hla_1706:

        .byte      0x66 
        .byte      0x81 
        .byte      0x3d 
        .long      year__hla_1684
        .word      0x270f
        jna        false__hla_1709

        .byte      0x68 
        .long      str__hla_1710
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1689
        call       STDOUT_PUTS
        jmp        endif__hla_1703
false__hla_1709:

        .word      0xa166
        .long      (year__hla_1684+0)

        .byte      0xc1 
        .byte      0xe0 
        .byte      0x8 

        .byte      0xa 
        .byte      0x5 
        .long      month__hla_1683

        .byte      0xc1 
        .byte      0xe0 
        .byte      0x8 

        .byte      0xa 
        .byte      0x5 
        .long      day__hla_1682

        .byte      0xa3 
        .long      (packedDate__hla_1685+0)
endif__hla_1703:

        .byte      0x68 
        .long      str__hla_1711
        call       STDOUT_PUTS

        .byte      0xff 
        .byte      0x35 
        .long      packedDate__hla_1685
        call       STDOUT_PUTD

        .byte      0x68 
        .long      str__hla_1689
        call       STDOUT_PUTS

        .byte      0xa1 
        .long      (packedDate__hla_1685+0)

        .byte      0xa2 
        .long      (day__hla_1682+0)

        .byte      0xc1 
        .byte      0xe8 
        .byte      0x8 

        .byte      0xa2 
        .long      (month__hla_1683+0)

        .byte      0xc1 
        .byte      0xe8 
        .byte      0x8 

        .word      0xa366
        .long      (year__hla_1684+0)

        .byte      0x68 
        .long      str__hla_1712
        call       STDOUT_PUTS

        .byte      0x6a 
        .byte      0x0 

        .byte      0x50 

        .byte      0xa0 
        .long      (day__hla_1682+0)

        .byte      0x88 
        .byte      0x44 
        .byte      0x24 
        .byte      0x4 

        .byte      0x58 
        call       STDOUT_PUTU8

        .byte      0x68 
        .long      str__hla_1713
        call       STDOUT_PUTS

        .byte      0x6a 
        .byte      0x0 

        .byte      0x50 

        .byte      0xa0 
        .long      (month__hla_1683+0)

        .byte      0x88 
        .byte      0x44 
        .byte      0x24 
        .byte      0x4 

        .byte      0x58 
        call       STDOUT_PUTU8

        .byte      0x68 
        .long      str__hla_1713
        call       STDOUT_PUTS

        .word      0x6a66
        .byte      0x0 

        .byte      0x66 
        .byte      0xff 
        .byte      0x35 
        .long      year__hla_1684
        call       STDOUT_PUTU16

        .byte      0x68 
        .long      str__hla_1689
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1714
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1689
        call       STDOUT_PUTS
QuitMain__hla_:

        .byte      0xb8 
        .long      0x1

        .byte      0x6a 
        .byte      0x0 

        .byte      0x6a 
        .byte      0x0 

        .word      0x80cd





