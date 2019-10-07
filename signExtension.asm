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
/*      movl       %esp, %eax */
        .byte      0x89 /*  */
        .byte      0xe0 /* mod-reg-r/m */
_findEnvp_$$_:
/*      addl       $4, %eax */
        .byte      0x83 /*  */
        .byte      0xc0 /*  */
        .byte      0x4 /*  */
/*      cmpl       $0, (%eax) */
        .byte      0x83 /*  */
        .byte      0x38 /*  */
        .byte      0x0 /*  */
        jne        _findEnvp_$$_
/*      addl       $4, %eax */
        .byte      0x83 /*  */
        .byte      0xc0 /*  */
        .byte      0x4 /*  */
/*      mov        %eax, _envp__hla_ */
        .byte      0xa3 /*  */
        .long      (_envp__hla_+0)
/*      lea        4(%esp), %eax */
        .byte      0x8d /*  */
        .byte      0x44 /*  */
        .byte      0x24 /*  */
        .byte      0x4 /*  */
/*      mov        %eax, _argv__hla_ */
        .byte      0xa3 /*  */
        .long      (_argv__hla_+0)
/*      mov        (%esp), %eax */
        .byte      0x8b /*  */
        .byte      0x4 /*  */
        .byte      0x24 /*  */
/*      mov        %eax, _argc__hla_ */
        .byte      0xa3 /*  */
        .long      (_argc__hla_+0)
        call       BuildExcepts__hla_
/*      pushl      $0 */
        .byte      0x6a /*  */
        .byte      0x0 /*  */
/*      movl       %esp, %ebp */
        .byte      0x89 /*  */
        .byte      0xe5 /* mod-reg-r/m */
/*      pushl      %ebp */
        .byte      0x55 /*  */


/*      pushl      $str__hla_1687 */
        .byte      0x68 /*  */
        .long      str__hla_1687
        call       STDOUT_PUTS
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDIN_GETI8
/*      mov        %al, i8__hla_1682 */
        .byte      0xa2 /*  */
        .long      (i8__hla_1682+0)
/*      popl       %eax */
        .byte      0x58 /*  */
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
/*      pushl      $str__hla_1697 */
        .byte      0x68 /*  */
        .long      str__hla_1697
        call       STDOUT_PUTS
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
/*      mov        i8__hla_1682, %al */
        .byte      0xa0 /*  */
        .long      (i8__hla_1682+0)
/*      pushl      $str__hla_1698 */
        .byte      0x68 /*  */
        .long      str__hla_1698
        call       STDOUT_PUTS
/*      pushl      $0 */
        .byte      0x6a /*  */
        .byte      0x0 /*  */
/*      pushl      %eax */
        .byte      0x50 /*  */
/*      mov        i8__hla_1682, %al */
        .byte      0xa0 /*  */
        .long      (i8__hla_1682+0)
/*      mov        %al, 4(%esp) */
        .byte      0x88 /*  */
        .byte      0x44 /*  */
        .byte      0x24 /*  */
        .byte      0x4 /*  */
/*      popl       %eax */
        .byte      0x58 /*  */
        call       STDOUT_PUTI8
/*      pushl      $str__hla_1699 */
        .byte      0x68 /*  */
        .long      str__hla_1699
        call       STDOUT_PUTS
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDOUT_PUTB
/*      pushl      $str__hla_1700 */
        .byte      0x68 /*  */
        .long      str__hla_1700
        call       STDOUT_PUTS
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
 /*       cbw         */
        .word      0x9866
/*      mov        %ax, i16__hla_1683 */
        .word      0xa366
        .long      (i16__hla_1683+0)
/*      pushl      $str__hla_1701 */
        .byte      0x68 /*  */
        .long      str__hla_1701
        call       STDOUT_PUTS
/*      pushw      $0 */
        .word      0x6a66
        .byte      0x0 /*  */
/*      pushw      i16__hla_1683 */
        .byte      0x66 /* size prefix */
        .byte      0xff /*  */
        .byte      0x35 /*  */
        .long      i16__hla_1683
        call       STDOUT_PUTI16
/*      pushl      $str__hla_1699 */
        .byte      0x68 /*  */
        .long      str__hla_1699
        call       STDOUT_PUTS
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDOUT_PUTW
/*      pushl      $str__hla_1700 */
        .byte      0x68 /*  */
        .long      str__hla_1700
        call       STDOUT_PUTS
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
 /*       cwde        */
        .byte      0x98 /* opcode */
/*      mov        %eax, i32__hla_1684 */
        .byte      0xa3 /*  */
        .long      (i32__hla_1684+0)
/*      pushl      $str__hla_1702 */
        .byte      0x68 /*  */
        .long      str__hla_1702
        call       STDOUT_PUTS
/*      pushl      i32__hla_1684 */
        .byte      0xff /*  */
        .byte      0x35 /*  */
        .long      i32__hla_1684
        call       STDOUT_PUTI32
/*      pushl      $str__hla_1699 */
        .byte      0x68 /*  */
        .long      str__hla_1699
        call       STDOUT_PUTS
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDOUT_PUTD
/*      pushl      $str__hla_1700 */
        .byte      0x68 /*  */
        .long      str__hla_1700
        call       STDOUT_PUTS
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
/*      pushl      $str__hla_1703 */
        .byte      0x68 /*  */
        .long      str__hla_1703
        call       STDOUT_PUTS
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
/*      movsbw     i8__hla_1682, %ax */
        .byte      0x66 /* size prefix */
        .byte      0xf /* 2 byte opcode prefix */
        .byte      0xbe /*  */
        .byte      0x5 /*  */
        .long      i8__hla_1682
/*      mov        %ax, i16__hla_1683 */
        .word      0xa366
        .long      (i16__hla_1683+0)
/*      pushl      $str__hla_1701 */
        .byte      0x68 /*  */
        .long      str__hla_1701
        call       STDOUT_PUTS
/*      pushw      $0 */
        .word      0x6a66
        .byte      0x0 /*  */
/*      pushw      i16__hla_1683 */
        .byte      0x66 /* size prefix */
        .byte      0xff /*  */
        .byte      0x35 /*  */
        .long      i16__hla_1683
        call       STDOUT_PUTI16
/*      pushl      $str__hla_1699 */
        .byte      0x68 /*  */
        .long      str__hla_1699
        call       STDOUT_PUTS
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDOUT_PUTW
/*      pushl      $str__hla_1700 */
        .byte      0x68 /*  */
        .long      str__hla_1700
        call       STDOUT_PUTS
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
/*      movsbl     i8__hla_1682, %eax */
        .byte      0xf /* 2 byte opcode prefix */
        .byte      0xbe /*  */
        .byte      0x5 /*  */
        .long      i8__hla_1682
/*      mov        %eax, i32__hla_1684 */
        .byte      0xa3 /*  */
        .long      (i32__hla_1684+0)
/*      pushl      $str__hla_1702 */
        .byte      0x68 /*  */
        .long      str__hla_1702
        call       STDOUT_PUTS
/*      pushl      i32__hla_1684 */
        .byte      0xff /*  */
        .byte      0x35 /*  */
        .long      i32__hla_1684
        call       STDOUT_PUTI32
/*      pushl      $str__hla_1699 */
        .byte      0x68 /*  */
        .long      str__hla_1699
        call       STDOUT_PUTS
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDOUT_PUTD
/*      pushl      $str__hla_1700 */
        .byte      0x68 /*  */
        .long      str__hla_1700
        call       STDOUT_PUTS
/*      pushl      $str__hla_1696 */
        .byte      0x68 /*  */
        .long      str__hla_1696
        call       STDOUT_PUTS
QuitMain__hla_:
/*      mov        $1, %eax */
        .byte      0xb8 /*  */
        .long      0x1
/*      pushl      $0 */
        .byte      0x6a /*  */
        .byte      0x0 /*  */
/*      pushl      $0 */
        .byte      0x6a /*  */
        .byte      0x0 /*  */
/*      int        $128 */
        .word      0x80cd




