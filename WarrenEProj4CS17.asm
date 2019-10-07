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
memp__hla_1682:
        .space     4
num__hla_1683 :.space     4
ColCnt__hla_1684 :.space     1


 .data
 .globl _envp__hla_
 .globl _argc__hla_
 .globl _argv__hla_
_argc__hla_: .long 0
_argv__hla_: .long 0
_envp__hla_: .long 0




  .text


        .align (2)
len__hla_1687 :.long      0x25
        .long      0x25
str__hla_1687:

 .ascii "Ebony Warren - Project 4: Heap Memory"
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
len__hla_1689 :.long      0x24
        .long      0x24
str__hla_1689:

 .ascii "Enter a poistive number, 0 to stop: "
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
/*      pushl      $str__hla_1688 */
        .byte      0x68 /*  */
        .long      str__hla_1688
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
/*      pushl      $1000 */
        .byte      0x68 /*  */
        .long      0x3e8
        call       MEM_ALLOC
/*      mov        %eax, memp__hla_1682 */
        .byte      0xa3 /*  */
        .long      (memp__hla_1682+0)
/*      pushl      %eax */
        .byte      0x50 /*  */
/*      pushl      $str__hla_1689 */
        .byte      0x68 /*  */
        .long      str__hla_1689
        call       STDOUT_PUTS
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDIN_GETU32
/*      mov        %eax, num__hla_1683 */
        .byte      0xa3 /*  */
        .long      (num__hla_1683+0)
/*      popl       %eax */
        .byte      0x58 /*  */
/*      pushl      num__hla_1683 */
        .byte      0xff /*  */
        .byte      0x35 /*  */
        .long      num__hla_1683
/*      popl       (%eax) */
        .byte      0x8f /*  */
        .byte      0x0 /*  */
/*      addl       $4, %eax */
        .byte      0x83 /*  */
        .byte      0xc0 /*  */
        .byte      0x4 /*  */
        jmp        continue__hla_1698
while__hla_1698:
/*      pushl      $str__hla_1689 */
        .byte      0x68 /*  */
        .long      str__hla_1689
        call       STDOUT_PUTS
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDIN_GETU32
/*      mov        %eax, num__hla_1683 */
        .byte      0xa3 /*  */
        .long      (num__hla_1683+0)
/*      popl       %eax */
        .byte      0x58 /*  */
/*      pushl      num__hla_1683 */
        .byte      0xff /*  */
        .byte      0x35 /*  */
        .long      num__hla_1683
/*      popl       (%eax) */
        .byte      0x8f /*  */
        .byte      0x0 /*  */
/*      addl       $4, %eax */
        .byte      0x83 /*  */
        .byte      0xc0 /*  */
        .byte      0x4 /*  */
continue__hla_1698:
/*      cmpl       $0, num__hla_1683 */
        .byte      0x83 /*  */
        .byte      0x3d /*  */
        .long      num__hla_1683
        .byte      0x0 /*  */
        jne        while__hla_1698
exitloop__hla_1698:

/*      subl       $4, %eax */
        .byte      0x83 /*  */
        .byte      0xe8 /*  */
        .byte      0x4 /*  */
/*      mov        %eax, memp__hla_1682 */
        .byte      0xa3 /*  */
        .long      (memp__hla_1682+0)
/*      popl       %eax */
        .byte      0x58 /*  */
        jmp        continue__hla_1708
while__hla_1708:
/*      pushl      (%eax) */
        .byte      0xff /*  */
        .byte      0x30 /*  */
/*      pushl      $3 */
        .byte      0x6a /*  */
        .byte      0x3 /*  */
/*      pushl      $32 */
        .byte      0x6a /*  */
        .byte      0x20 /*  */
        call       STDOUT_PUTI32SIZE
/*      addl       $4, %eax */
        .byte      0x83 /*  */
        .byte      0xc0 /*  */
        .byte      0x4 /*  */
/*      addb       $1, ColCnt__hla_1684 */
        .byte      0x80 /*  */
        .byte      0x5 /*  */
        .long      ColCnt__hla_1684
        .byte      0x1 /*  */
/*      cmpb       $14, ColCnt__hla_1684 */
        .byte      0x80 /*  */
        .byte      0x3d /*  */
        .long      ColCnt__hla_1684
        .byte      0xe /*  */
        jne        false__hla_1710
        call       STDOUT_NEWLN
/*      movb       $0, ColCnt__hla_1684 */
        .byte      0xc6 /*  */
        .byte      0x5 /*  */
        .long      ColCnt__hla_1684
        .byte      0x0 /*  */
false__hla_1710:
continue__hla_1708:
/*      cmpl       memp__hla_1682, %eax */
        .byte      0x3b /*  */
        .byte      0x5 /*  */
        .long      memp__hla_1682
        jb         while__hla_1708
exitloop__hla_1708:

        call       STDOUT_NEWLN
/*      pushl      $str__hla_1688 */
        .byte      0x68 /*  */
        .long      str__hla_1688
        call       STDOUT_PUTS
/*      pushl      $str__hla_1687 */
        .byte      0x68 /*  */
        .long      str__hla_1687
        call       STDOUT_PUTS
/*      pushl      $str__hla_1688 */
        .byte      0x68 /*  */
        .long      str__hla_1688
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




