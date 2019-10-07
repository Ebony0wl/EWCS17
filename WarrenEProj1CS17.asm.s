# 1 "Documents/WarrenEProj1CS17.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 330 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "Documents/WarrenEProj1CS17.asm" 2
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


 .data
 .globl _envp__hla_
 .globl _argc__hla_
 .globl _argv__hla_
_argc__hla_: .long 0
_argv__hla_: .long 0
_envp__hla_: .long 0




  .text


        .align (2)
len__hla_1684 :.long      0x26
        .long      0x26
str__hla_1684:

 .ascii "Ebony Warren - Project 1: Introductory"
 .byte 0

 .byte 0

        .align (2)
len__hla_1688 :.long      0x27
        .long      0x27
str__hla_1688:

 .ascii "Ebony Warren - Project 1: Introductory"
 .byte 0xa
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
        .byte      0x83
        .byte      0xec
        .byte      0x8
        .byte      0x83
        .byte      0xe4
        .byte      0xfc


        .byte      0x68
        .long      str__hla_1684
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        .byte      0xc7
        .byte      0x45
        .byte      0xf8
        .long      0x1
        .byte      0xc6
        .byte      0x45
        .byte      0xf7
        .byte      0x0
        jmp        continue__hla_1685
while__hla_1685:
        .byte      0x80
        .byte      0x7d
        .byte      0xf7
        .byte      0x8
        jne        false__hla_1687
        call       STDOUT_NEWLN
        .byte      0xc6
        .byte      0x45
        .byte      0xf7
        .byte      0x0
false__hla_1687:
        .byte      0xff
        .byte      0x75
        .byte      0xf8
        .byte      0x6a
        .byte      0x5
        .byte      0x6a
        .byte      0x20
        call       STDOUT_PUTI32SIZE
        .byte      0x83
        .byte      0x45
        .byte      0xf8
        .byte      0x1
        .byte      0x80
        .byte      0x45
        .byte      0xf7
        .byte      0x1
continue__hla_1685:
        .byte      0x83
        .byte      0x7d
        .byte      0xf8
        .byte      0x61
        jl         while__hla_1685
exitloop__hla_1685:

        call       STDOUT_NEWLN
        .byte      0x68
        .long      str__hla_1688
        call       STDOUT_PUTS
QuitMain__hla_:
        .byte      0xb8
        .long      0x1
        .byte      0x6a
        .byte      0x0
        .byte      0x6a
        .byte      0x0
        .word      0x80cd





