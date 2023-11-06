	.file	"timing.c"
 # GNU C11 (MinGW.org GCC-6.3.0-1) version 6.3.0 (mingw32)
 #	compiled by GNU C version 6.3.0, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/6.3.0/
 # timing.c -march=x86-64 -Wall -Wextra -fsanitize=address -fverbose-asm
 # options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
 # -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
 # -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
 # -fchkp-store-bounds -fchkp-use-static-bounds
 # -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcommon
 # -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
 # -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-runtime
 # -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
 # -fira-share-save-slots -fira-share-spill-slots -fivopts
 # -fkeep-inline-dllexport -fkeep-static-consts -fleading-underscore
 # -flifetime-dse -flto-odr-type-merging -fmath-errno -fmerge-debug-strings
 # -fpeephole -fplt -fprefetch-loop-arrays -freg-struct-return
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 # -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
 # -fset-stack-executable -fshow-column -fsigned-zeros
 # -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
 # -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
 # -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
 # -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 # -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
 # -funwind-tables -fverbose-asm -fzero-initialized-in-bss -m32 -m80387
 # -m96bit-long-double -maccumulate-outgoing-args -malign-double
 # -malign-stringops -mavx256-split-unaligned-load
 # -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
 # -mieee-fp -mlong-double-80 -mmmx -mms-bitfields -mno-red-zone -mno-sse4
 # -mpush-args -msahf -msse -msse2 -mstack-arg-probe -mstackrealign
 # -mvzeroupper

	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 32
LC2:
	.ascii "%d: %f\12\0"
	.space 56
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LASANPC15:
LFB15:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	andl	$-16, %esp	 #,
	subl	$80, %esp	 #,
	call	___main	 #
	movl	$1, 36(%esp)	 #, exp
	jmp	L2	 #
L6:
	fildl	36(%esp)	 # exp
	fstpl	8(%esp)	 #
	fldl	LC0	 #
	fstpl	(%esp)	 #
	call	_pow	 #
	fnstcw	22(%esp)	 #
	movzwl	22(%esp), %eax	 #, tmp112
	movb	$12, %ah	 #, tmp112
	movw	%ax, 20(%esp)	 # tmp112,
	fldcw	20(%esp)	 #
	fistpq	48(%esp)	 # n_times
	fldcw	22(%esp)	 #
	call	_clock	 #
	movl	%eax, 16(%esp)	 #, %sfp
	fildl	16(%esp)	 # %sfp
	fstpl	56(%esp)	 # start
	movl	$0, 40(%esp)	 #, i
	jmp	L3	 #
L4:
	movl	40(%esp), %eax	 # i, tmp102
	addl	$1, %eax	 #, tmp101
	movl	%eax, 44(%esp)	 # tmp101, b
	addl	$1, 40(%esp)	 #, i
L3:
	movl	40(%esp), %eax	 # i, tmp103
	cltd
	cmpl	52(%esp), %edx	 # n_times, _14
	jl	L4	 #,
	cmpl	52(%esp), %edx	 # n_times, _14
	jg	L8	 #,
	cmpl	48(%esp), %eax	 # n_times, _14
	jb	L4	 #,
L8:
	call	_clock	 #
	movl	%eax, 16(%esp)	 #, %sfp
	fildl	16(%esp)	 # %sfp
	fstpl	64(%esp)	 # end
	fldl	64(%esp)	 # end
	fsubl	56(%esp)	 # start
	fildq	48(%esp)	 # n_times
	fstpl	24(%esp)	 #
	fldl	24(%esp)	 #
	fdivrp	%st, %st(1)	 #,
	fldl	LC1	 #
	fmulp	%st, %st(1)	 #,
	fstpl	72(%esp)	 # time
	fldl	72(%esp)	 # time
	fstpl	8(%esp)	 #
	movl	36(%esp), %eax	 # exp, tmp110
	movl	%eax, 4(%esp)	 # tmp110,
	movl	$LC2, (%esp)	 #,
	call	_printf	 #
	addl	$1, 36(%esp)	 #, exp
L2:
	cmpl	$29, 36(%esp)	 #, exp
	jle	L6	 #,
	movl	$0, %eax	 #, _26
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.section .rdata,"dr"
LC4:
	.ascii "*LC2\0"
LC5:
	.ascii "timing.c\0"
	.data
	.align 4
LASAN0:
 # __beg:
	.long	LC2
 # __size:
	.long	8
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC4
 # __module_name:
	.long	LC5
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
	.text
	.def	__GLOBAL__sub_D_00099_0_main;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_D_00099_0_main:
LFB16:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$24, %esp	 #,
	movl	$1, 4(%esp)	 #,
	movl	$LASAN0, (%esp)	 #,
	call	___asan_unregister_globals	 #
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.section	.dtors.65436,"w"
	.align 4
	.long	__GLOBAL__sub_D_00099_0_main
	.text
	.def	__GLOBAL__sub_I_00099_1_main;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I_00099_1_main:
LFB17:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$24, %esp	 #,
	call	___asan_init	 #
	call	___asan_version_mismatch_check_v6	 #
	movl	$1, 4(%esp)	 #,
	movl	$LASAN0, (%esp)	 #,
	call	___asan_register_globals	 #
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.section	.ctors.65436,"w"
	.align 4
	.long	__GLOBAL__sub_I_00099_1_main
	.section .rdata,"dr"
	.align 8
LC0:
	.long	0
	.long	1076101120
	.align 8
LC1:
	.long	0
	.long	1093567616
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	_clock;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	___asan_unregister_globals;	.scl	2;	.type	32;	.endef
	.def	___asan_init;	.scl	2;	.type	32;	.endef
	.def	___asan_version_mismatch_check_v6;	.scl	2;	.type	32;	.endef
	.def	___asan_register_globals;	.scl	2;	.type	32;	.endef
