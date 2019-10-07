# 1 "signExtension.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 340 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "signExtension.asm" 2
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
i8__hla_1682 :.space     1
i16__hla_1683 :.space     2
i32__hla_1684 :.space     4


 .data
 .globl _envp__hla_
 .globl _argc__hla_
 .globl _argv__hla_
_argc__hla_: .long 0
_argv__hla_: .long 0
_envp__hla_: .long 0




  .text


        .align (2)
len__hla_1687 :.long      0x1f
        .long      0x1f
str__hla_1687:

 .ascii "Enter a small negative number: "
 .byte 0


        .align (2)
len__hla_1696 :.long      0x1
        .long      0x1
str__hla_1696:
 .byte 0xa
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1697 :.long      0x22
        .long      0x22
str__hla_1697:

 .ascii "Sign extension using CBW and CWDE:"
 .byte 0

 .byte 0

        .align (2)
len__hla_1698 :.long      0xc
        .long      0xc
str__hla_1698:

 .ascii "You entered "
 .byte 0

 .byte 0
 .byte 0
 .byte 0

        .align (2)
len__hla_1699 :.long      0x3
        .long      0x3
str__hla_1699:

 .ascii " ($"
 .byte 0


        .align (2)
len__hla_1700 :.long      0x1
        .long      0x1
str__hla_1700:

 .ascii ")"
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1701 :.long      0x17
        .long      0x17
str__hla_1701:

 .ascii "16-bit sign extension: "
 .byte 0


        .align (2)
len__hla_1702 :.long      0x17
        .long      0x17
str__hla_1702:

 .ascii "32-bit sign extension: "
 .byte 0


        .align (2)
len__hla_1703 :.long      0x1b
        .long      0x1b
str__hla_1703:

 .ascii "Sign extension using MOVSX:"
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
        .long      str__hla_1687
        call       STDOUT_PUTS

        .byte      0x50 
        call       STDIN_GETI8

        .byte      0xa2 
        .long      (i8__hla_1682+0)

        .byte      0x58 

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1697
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS

        .byte      0xa0 
        .long      (i8__hla_1682+0)

        .byte      0x68 
        .long      str__hla_1698
        call       STDOUT_PUTS

        .byte      0x6a 
        .byte      0x0 

        .byte      0x50 

        .byte      0xa0 
        .long      (i8__hla_1682+0)

        .byte      0x88 
        .byte      0x44 
        .byte      0x24 
        .byte      0x4 

        .byte      0x58 
        call       STDOUT_PUTI8

        .byte      0x68 
        .long      str__hla_1699
        call       STDOUT_PUTS

        .byte      0x50 
        call       STDOUT_PUTB

        .byte      0x68 
        .long      str__hla_1700
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS
 
        .word      0x9866

        .word      0xa366
        .long      (i16__hla_1683+0)

        .byte      0x68 
        .long      str__hla_1701
        call       STDOUT_PUTS

        .word      0x6a66
        .byte      0x0 

        .byte      0x66 
        .byte      0xff 
        .byte      0x35 
        .long      i16__hla_1683
        call       STDOUT_PUTI16

        .byte      0x68 
        .long      str__hla_1699
        call       STDOUT_PUTS

        .byte      0x50 
        call       STDOUT_PUTW

        .byte      0x68 
        .long      str__hla_1700
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS
 
        .byte      0x98 

        .byte      0xa3 
        .long      (i32__hla_1684+0)

        .byte      0x68 
        .long      str__hla_1702
        call       STDOUT_PUTS

        .byte      0xff 
        .byte      0x35 
        .long      i32__hla_1684
        call       STDOUT_PUTI32

        .byte      0x68 
        .long      str__hla_1699
        call       STDOUT_PUTS

        .byte      0x50 
        call       STDOUT_PUTD

        .byte      0x68 
        .long      str__hla_1700
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1703
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS

        .byte      0x66 
        .byte      0xf 
        .byte      0xbe 
        .byte      0x5 
        .long      i8__hla_1682

        .word      0xa366
        .long      (i16__hla_1683+0)

        .byte      0x68 
        .long      str__hla_1701
        call       STDOUT_PUTS

        .word      0x6a66
        .byte      0x0 

        .byte      0x66 
        .byte      0xff 
        .byte      0x35 
        .long      i16__hla_1683
        call       STDOUT_PUTI16

        .byte      0x68 
        .long      str__hla_1699
        call       STDOUT_PUTS

        .byte      0x50 
        call       STDOUT_PUTW

        .byte      0x68 
        .long      str__hla_1700
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS

        .byte      0xf 
        .byte      0xbe 
        .byte      0x5 
        .long      i8__hla_1682

        .byte      0xa3 
        .long      (i32__hla_1684+0)

        .byte      0x68 
        .long      str__hla_1702
        call       STDOUT_PUTS

        .byte      0xff 
        .byte      0x35 
        .long      i32__hla_1684
        call       STDOUT_PUTI32

        .byte      0x68 
        .long      str__hla_1699
        call       STDOUT_PUTS

        .byte      0x50 
        call       STDOUT_PUTD

        .byte      0x68 
        .long      str__hla_1700
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1696
        call       STDOUT_PUTS
QuitMain__hla_:

        .byte      0xb8 
        .long      0x1

        .byte      0x6a 
        .byte      0x0 

        .byte      0x6a 
        .byte      0x0 

        .word      0x80cd





