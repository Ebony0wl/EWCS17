# 1 "WarrenEProj3CS17.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 340 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "WarrenEProj3CS17.asm" 2
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
num__hla_1682 :.space     4
max__hla_1683 :.space     4
min__hla_1684 :.space     4
total__hla_1685 :.long  0x0
c__hla_1686 :.long  0x0


 .data
 .globl _envp__hla_
 .globl _argc__hla_
 .globl _argv__hla_
_argc__hla_: .long 0
_argv__hla_: .long 0
_envp__hla_: .long 0




  .text


        .align (2)
len__hla_1689 :.long      0x18
        .long      0x18
str__hla_1689:

 .ascii "Ebony Warren - Project 3"
 .byte 0

 .byte 0
 .byte 0
 .byte 0

        .align (2)
len__hla_1690 :.long      0x1
        .long      0x1
str__hla_1690:
 .byte 0xa
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1691 :.long      0x24
        .long      0x24
str__hla_1691:

 .ascii "Enter a poistive number, 0 to stop: "
 .byte 0

 .byte 0
 .byte 0
 .byte 0

        .align (2)
len__hla_1713 :.long      0x7
        .long      0x7
str__hla_1713:

 .ascii "Total: "
 .byte 0


        .align (2)
len__hla_1714 :.long      0x7
        .long      0x7
str__hla_1714:

 .ascii "Count: "
 .byte 0


        .align (2)
len__hla_1715 :.long      0x5
        .long      0x5
str__hla_1715:

 .ascii "Max: "
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1716 :.long      0x5
        .long      0x5
str__hla_1716:

 .ascii "Min: "
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1717 :.long      0x1f
        .long      0x1f
str__hla_1717:

 .ascii "Ebony Warren - End of Project 3"
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
        .long      str__hla_1689
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1691
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS

        .byte      0x50 
        call       STDIN_GETI32

        .byte      0xa3 
        .long      (num__hla_1682+0)

        .byte      0x58 

        .byte      0xa1 
        .long      (num__hla_1682+0)

        .byte      0x8b 
        .byte      0x1d 
        .long      num__hla_1682

        .byte      0xff 
        .byte      0x35 
        .long      num__hla_1682

        .byte      0x8f 
        .byte      0x5 
        .long      total__hla_1685
        jmp        continue__hla_1700
while__hla_1700:

        .byte      0x68 
        .long      str__hla_1691
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS

        .byte      0x50 
        call       STDIN_GETI32

        .byte      0xa3 
        .long      (num__hla_1682+0)

        .byte      0x58 

        .byte      0x50 

        .byte      0xa1 
        .long      (num__hla_1682+0)

        .byte      0x1 
        .byte      0x5 
        .long      total__hla_1685

        .byte      0x58 

        .byte      0x83 
        .byte      0x5 
        .long      c__hla_1686
        .byte      0x1 

        .byte      0x39 
        .byte      0x5 
        .long      num__hla_1682
        jng        false__hla_1710

        .byte      0xa1 
        .long      (num__hla_1682+0)
        jmp        endif__hla_1710
false__hla_1710:

        .byte      0x39 
        .byte      0x1d 
        .long      num__hla_1682
        jnl        false__hla_1711

        .byte      0x83 
        .byte      0x3d 
        .long      num__hla_1682
        .byte      0x0 
        je         false__hla_1711

        .byte      0x8b 
        .byte      0x1d 
        .long      num__hla_1682
        jmp        endif__hla_1710
false__hla_1711:
endif__hla_1710:
continue__hla_1700:

        .byte      0x83 
        .byte      0x3d 
        .long      num__hla_1682
        .byte      0x0 
        jne        while__hla_1700
exitloop__hla_1700:


        .byte      0xa3 
        .long      (max__hla_1683+0)

        .byte      0x89 
        .byte      0x1d 
        .long      min__hla_1684

        .byte      0x68 
        .long      str__hla_1713
        call       STDOUT_PUTS

        .byte      0xff 
        .byte      0x35 
        .long      total__hla_1685
        call       STDOUT_PUTI32

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1714
        call       STDOUT_PUTS

        .byte      0xff 
        .byte      0x35 
        .long      c__hla_1686
        call       STDOUT_PUTI32

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1715
        call       STDOUT_PUTS

        .byte      0xff 
        .byte      0x35 
        .long      max__hla_1683
        call       STDOUT_PUTI32

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1716
        call       STDOUT_PUTS

        .byte      0xff 
        .byte      0x35 
        .long      min__hla_1684
        call       STDOUT_PUTI32

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1717
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS
QuitMain__hla_:

        .byte      0xb8 
        .long      0x1

        .byte      0x6a 
        .byte      0x0 

        .byte      0x6a 
        .byte      0x0 

        .word      0x80cd




