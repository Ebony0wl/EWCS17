# 1 "Documents/WarrenEProj7CS17.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 340 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "Documents/WarrenEProj7CS17.asm" 2
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
len__hla_1684 :.long      0x1
        .long      0x1
str__hla_1684:
 .byte 0xa
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1685 :.long      0x2b
        .long      0x2b
str__hla_1685:

 .ascii "Ebony Warren - Project 6: Fibonacci Numbers"
 .byte 0


        .align (2)
len__hla_1687 :.long      0x2f
        .long      0x2f
str__hla_1687:

 .ascii "Enter a positive number up to 25, (0 to stop): "
 .byte 0


        .align (2)
len__hla_1700 :.long      0xd
        .long      0xd
str__hla_1700:

 .ascii "Fibonacci of "
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1701 :.long      0x4
        .long      0x4
str__hla_1701:

 .ascii " is "
 .byte 0

 .byte 0
 .byte 0
 .byte 0

        .align (2)
len__hla_1702 :.long      0x7
        .long      0x7
str__hla_1702:

 .ascii "Error: "
 .byte 0


        .align (2)
len__hla_1703 :.long      0x33
        .long      0x33
str__hla_1703:

 .ascii "Please enter a number between 1 and 25 (0 to stop)."
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

        .byte      0x68 
        .long      str__hla_1685
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1684
        call       STDOUT_PUTS

GetNum__hla_1686:

        .byte      0xc7 
        .byte      0x45 
        .byte      0xf4 
        .long      0x0

        .byte      0xb9 
        .long      0x1

        .byte      0x68 
        .long      str__hla_1684
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1687
        call       STDOUT_PUTS

        .byte      0x50 
        call       STDIN_GETI32

        .byte      0x89 
        .byte      0x45 
        .byte      0xf8 

        .byte      0x58 

        .byte      0x8b 
        .byte      0x45 
        .byte      0xf8 

        .byte      0x83 
        .byte      0x7d 
        .byte      0xf8 
        .byte      0x0 
        je         endP__hla_1696
        jl         error__hla_1697

        .byte      0x83 
        .byte      0x7d 
        .byte      0xf8 
        .byte      0x19 
        jg         error__hla_1697

        .byte      0xbb 
        .long      0x2

loopfib__hla_1698:

        .byte      0x3b 
        .byte      0x5d 
        .byte      0xf8 
        jnle       output__hla_1699

        .byte      0x8b 
        .byte      0x45 
        .byte      0xf4 

        .byte      0x89 
        .byte      0x4d 
        .byte      0xf4 

        .byte      0x1 
        .byte      0xc1 

        .byte      0x43 
        jmp        loopfib__hla_1698

output__hla_1699:

        .byte      0x68 
        .long      str__hla_1700
        call       STDOUT_PUTS

        .byte      0xff 
        .byte      0x75 
        .byte      0xf8 
        call       STDOUT_PUTI32

        .byte      0x68 
        .long      str__hla_1701
        call       STDOUT_PUTS

        .byte      0x51 
        call       STDOUT_PUTI32
        call       STDOUT_NEWLN
        jmp        GetNum__hla_1686

error__hla_1697:

        .byte      0x68 
        .long      str__hla_1702
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1684
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1703
        call       STDOUT_PUTS
        jmp        GetNum__hla_1686

endP__hla_1696:

        .byte      0x68 
        .long      str__hla_1684
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1685
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1684
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1684
        call       STDOUT_PUTS
QuitMain__hla_:

        .byte      0xb8 
        .long      0x1

        .byte      0x6a 
        .byte      0x0 

        .byte      0x6a 
        .byte      0x0 

        .word      0x80cd





