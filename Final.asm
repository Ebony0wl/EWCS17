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
X__hla_1682 :.byte  0x5
Y__hla_1683 :.byte  0x8


 .data
 .globl _envp__hla_
 .globl _argc__hla_
 .globl _argv__hla_
_argc__hla_: .long 0
_argv__hla_: .long 0
_envp__hla_: .long 0




  .text

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


/*      mov        $16, %al */
        .byte      0xb0 /*  */
        .byte      0x10 /*  */
/*      mulb       X__hla_1682 */
        .byte      0xf6 /*  */
        .byte      0x25 /*  */
        .long      X__hla_1682
        call       STDOUT_NEWLN
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDOUT_PUTI16
/*      divb       Y__hla_1683 */
        .byte      0xf6 /*  */
        .byte      0x35 /*  */
        .long      Y__hla_1683
        call       STDOUT_NEWLN
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDOUT_PUTI8
        call       STDOUT_NEWLN
/*      mov        $120, %ax */
        .word      0xb866
        .word      0x78
/*      mov        $6, %bx */
        .word      0xbb66
        .word      0x6
/*      mulw       %bx */
        .byte      0x66 /* size prefix */
        .byte      0xf7 /*  */
        .byte      0xe3 /* mod-reg-r/m */
/*      pushw      %dx */
        .byte      0x66 /* size prefix */
        .byte      0x52 /*  */
/*      pushw      %ax */
        .byte      0x66 /* size prefix */
        .byte      0x50 /*  */
        call       STDOUT_PUTI32
        call       STDOUT_NEWLN
/*      pushl      %edx */
        .byte      0x52 /*  */
        call       STDOUT_PUTI16
        call       STDOUT_NEWLN
/*      pushl      %eax */
        .byte      0x50 /*  */
        call       STDOUT_PUTI16
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




