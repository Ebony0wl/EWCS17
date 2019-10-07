# 1 "WarrenEProj5CS17.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 340 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "WarrenEProj5CS17.asm" 2
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
DataOfNum__hla_1682:
        .long      0x12
        .long      0x21
        .long      0xd
        .long      0xe
        .long      0x11
        .long      0x19
        .long      0x14
        .long      0x4c
        .long      0x16
        .long      0x41
index__hla_1683 :.space     4
temp__hla_1684 :.space     4


 .data
 .globl _envp__hla_
 .globl _argc__hla_
 .globl _argv__hla_
_argc__hla_: .long 0
_argv__hla_: .long 0
_envp__hla_: .long 0




  .text


        .align (2)
len__hla_1687 :.long      0x20
        .long      0x20
str__hla_1687:

 .ascii "Ebony Warren - Project 5: Arrays"
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
len__hla_1689 :.long      0x1a
        .long      0x1a
str__hla_1689:

 .ascii "Number of array elements: "
 .byte 0

 .byte 0

        .align (2)
len__hla_1690 :.long      0x10
        .long      0x10
str__hla_1690:

 .ascii "array elements: "
 .byte 0

 .byte 0
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
        call       STDOUT_NEWLN

        .byte      0x68 
        .long      str__hla_1689
        call       STDOUT_PUTS

        .byte      0xff 
        .byte      0x35 
        .long      DataOfNum__hla_1682
        call       STDOUT_PUTU32

        .byte      0x68 
        .long      str__hla_1688
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1690
        call       STDOUT_PUTS

        .byte      0xbb 
        .long      0x0

        jmp        StartFor__hla_1691
for__hla_1691:

        .byte      0xff 
        .byte      0x34 
        .byte      0x9d 
        .long      DataOfNum__hla_1682

        .byte      0x6a 
        .byte      0x4 

        .byte      0x6a 
        .byte      0x20 
        call       STDOUT_PUTI32SIZE
continue__hla_1691:

        .byte      0x43 

StartFor__hla_1691:

        .byte      0x83 
        .byte      0xfb 
        .byte      0xa 
        jb         for__hla_1691
exitloop__hla_1691:

        call       STDOUT_NEWLN

        .byte      0xba 
        .long      0x9
        jmp        continue__hla_1692
while__hla_1692:

        .byte      0xff 
        .byte      0x34 
        .byte      0x95 
        .long      DataOfNum__hla_1682

        .byte      0x8f 
        .byte      0x5 
        .long      temp__hla_1684

        .byte      0xb8 
        .long      0x0

        .byte      0xa1 
        .long      (DataOfNum__hla_1682+0)

        .byte      0xbb 
        .long      0x0

        jmp        StartFor__hla_1694
for__hla_1694:

        .byte      0x8b 
        .byte      0x34 
        .byte      0x9d 
        .long      DataOfNum__hla_1682

        .byte      0x39 
        .byte      0xf0 
        jnb        false__hla_1695

        .byte      0x89 
        .byte      0x34 
        .byte      0x95 
        .long      DataOfNum__hla_1682

        .byte      0x89 
        .byte      0x1d 
        .long      index__hla_1683

        .byte      0x89 
        .byte      0xf0 
false__hla_1695:
continue__hla_1694:

        .byte      0x43 

StartFor__hla_1694:

        .byte      0x39 
        .byte      0xd3 
        jbe        for__hla_1694
exitloop__hla_1694:


        .byte      0x8b 
        .byte      0xd 
        .long      index__hla_1683

        .byte      0xff 
        .byte      0x35 
        .long      temp__hla_1684

        .byte      0x8f 
        .byte      0x4 
        .byte      0x8d 
        .long      DataOfNum__hla_1682

        .byte      0x4a 

        .byte      0xbb 
        .long      0x0

        jmp        StartFor__hla_1696
for__hla_1696:

        .byte      0xff 
        .byte      0x34 
        .byte      0x9d 
        .long      DataOfNum__hla_1682

        .byte      0x6a 
        .byte      0x4 

        .byte      0x6a 
        .byte      0x20 
        call       STDOUT_PUTI32SIZE
continue__hla_1696:

        .byte      0x43 

StartFor__hla_1696:

        .byte      0x83 
        .byte      0xfb 
        .byte      0xa 
        jb         for__hla_1696
exitloop__hla_1696:

        call       STDOUT_NEWLN
continue__hla_1692:

        .byte      0x83 
        .byte      0xfa 
        .byte      0x0 
        jae        while__hla_1692
exitloop__hla_1692:

        call       STDOUT_NEWLN

        .byte      0x68 
        .long      str__hla_1688
        call       STDOUT_PUTS

        .byte      0x68 
        .long      str__hla_1687
        call       STDOUT_PUTS

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





