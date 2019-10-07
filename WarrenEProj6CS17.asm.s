# 1 "Documents/WarrenEProj6CS17.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 340 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "Documents/WarrenEProj6CS17.asm" 2
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
lastIndex__hla_1682 :.long  0x11
maxIndex__hla_1683 :.space     4
dataToSort__hla_1684:
        .long      0x55
        .long      0x23
        .long      0x12
        .long      0x59
        .long      0x39
        .long      0x2d
        .long      0x32
        .long      0x31
        .long      0x24
        .long      0x1e
        .long      0x2e
        .long      0x1c
        .long      0x3f
        .long      0x4f
        .long      0x51
        .long      0x54
        .long      0x2a
        .long      0x3e


 .data
 .globl _envp__hla_
 .globl _argc__hla_
 .globl _argv__hla_
_argc__hla_: .long 0
_argv__hla_: .long 0
_envp__hla_: .long 0




  .text


        .align (2)
len__hla_1687 :.long      0x28
        .long      0x28
str__hla_1687:

 .ascii "Ebony Warren - Project 6: Pure Assembley"
 .byte 0

 .byte 0
 .byte 0
 .byte 0

        .align (2)
len__hla_1688 :.long      0x1
        .long      0x1
str__hla_1688:
 .byte 0xa
 .byte 0

 .byte 0
 .byte 0

        .align (2)
len__hla_1689 :.long      0x2a
        .long      0x2a
str__hla_1689:

 .ascii "Selection Sort, Number of Array Elements: "
 .byte 0

 .byte 0

        .align (2)
len__hla_1690 :.long      0x18
        .long      0x18
str__hla_1690:

 .ascii "Original Array Elements:"
 .byte 0

 .byte 0
 .byte 0
 .byte 0

        .align (2)
len__hla_1693 :.long      0xa
        .long      0xa
str__hla_1693:

 .ascii "Sorting..."
 .byte 0

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

        .byte      0x68 
        .long      str__hla_1688
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1688
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1689
        call       STDOUT_PUTS

        .byte      0x6a 
        .byte      0x12 
        call       STDOUT_PUTU8

        .byte      0x68 
        .long      str__hla_1688
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1688
        call       STDOUT_PUTS

        .byte      0xbb 
        .long      0x0

LblData__hla_1691:

        .byte      0x83 
        .byte      0xfb 
        .byte      0x12 
        jnl        LblSorting__hla_1692

        .byte      0xff 
        .byte      0x34 
        .byte      0x9d 
        .long      dataToSort__hla_1684

        .byte      0x6a 
        .byte      0x4 

        .byte      0x6a 
        .byte      0x20 
        call       STDOUT_PUTI32SIZE

        .byte      0x43 
        jmp        LblData__hla_1691

LblSorting__hla_1692:
        call       STDOUT_NEWLN
        call       STDOUT_NEWLN

        .byte      0x68 
        .long      str__hla_1693
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1688
        call       STDOUT_PUTS

LblLoop__hla_1694:
        call       STDOUT_NEWLN

        .byte      0x83 
        .byte      0x3d 
        .long      lastIndex__hla_1682
        .byte      0x0 
        jng        LblEnd__hla_1695

        .byte      0xa1 
        .long      (dataToSort__hla_1684+0)

        .byte      0xc7 
        .byte      0x5 
        .long      maxIndex__hla_1683
        .long      0x0

        .byte      0xbb 
        .long      0x1

LblMax__hla_1696:

        .byte      0x3b 
        .byte      0x1d 
        .long      lastIndex__hla_1682
        jnle       LblRearrange__hla_1697

LblCompare__hla_1698:

        .byte      0x39 
        .byte      0x4 
        .byte      0x9d 
        .long      dataToSort__hla_1684
        jng        Lblinc__hla_1699

        .byte      0x8b 
        .byte      0x4 
        .byte      0x9d 
        .long      dataToSort__hla_1684

        .byte      0x89 
        .byte      0x1d 
        .long      maxIndex__hla_1683
        jmp        LblCompare__hla_1698

Lblinc__hla_1699:

        .byte      0x43 
        jmp        LblMax__hla_1696

LblRearrange__hla_1697:

        .byte      0x4b 

        .byte      0x8b 
        .byte      0xc 
        .byte      0x9d 
        .long      dataToSort__hla_1684

        .byte      0x89 
        .byte      0x4 
        .byte      0x9d 
        .long      dataToSort__hla_1684

        .byte      0x8b 
        .byte      0x15 
        .long      maxIndex__hla_1683

        .byte      0x89 
        .byte      0xc 
        .byte      0x95 
        .long      dataToSort__hla_1684

        .byte      0xff 
        .byte      0xd 
        .long      lastIndex__hla_1682

        .byte      0xbb 
        .long      0x0

LblOutput__hla_1700:

        .byte      0x83 
        .byte      0xfb 
        .byte      0x12 
        jnl        LblLoop__hla_1694

        .byte      0xff 
        .byte      0x34 
        .byte      0x9d 
        .long      dataToSort__hla_1684

        .byte      0x6a 
        .byte      0x4 

        .byte      0x6a 
        .byte      0x20 
        call       STDOUT_PUTI32SIZE

        .byte      0x43 
        jmp        LblOutput__hla_1700

LblEnd__hla_1695:

        .byte      0x68 
        .long      str__hla_1688
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1688
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1687
        call       STDOUT_PUTS
QuitMain__hla_:

        .byte      0xb8 
        .long      0x1

        .byte      0x6a 
        .byte      0x0 

        .byte      0x6a 
        .byte      0x0 

        .word      0x80cd





