	.file	"test.c"
 # GNU C11 (MinGW.org GCC-6.3.0-1) version 6.3.0 (mingw32)
 #	compiled by GNU C version 6.3.0, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/6.3.0/ test.c
 # -march=x86-64 -Wall -Wextra -fverbose-asm
 # options enabled:  -faggressive-loop-optimizations
 # -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
 # -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
 # -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
 # -fchkp-use-static-bounds -fchkp-use-static-const-bounds
 # -fchkp-use-wrappers -fcommon -fdelete-null-pointer-checks
 # -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
 # -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique -fident
 # -finline-atomics -fira-hoist-pressure -fira-share-save-slots
 # -fira-share-spill-slots -fivopts -fkeep-inline-dllexport
 # -fkeep-static-consts -fleading-underscore -flifetime-dse
 # -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
 # -fplt -fprefetch-loop-arrays -freg-struct-return
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

	.section .rdata,"dr"
LC0:
	.ascii "%f\12\0"
LC1:
	.ascii "%d\12\0"
	.text
	.globl	_boop
	.def	_boop;	.scl	2;	.type	32;	.endef
_boop:
LFB14:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$24, %esp	 #,
	cmpl	$0, 12(%ebp)	 #, type
	jne	L2	 #,
	movl	8(%ebp), %eax	 # par, tmp90
	flds	(%eax)	 # MEM[(float *)par_4(D)]
	fstpl	4(%esp)	 #
	movl	$LC0, (%esp)	 #,
	call	_printf	 #
	jmp	L4	 #
L2:
	cmpl	$1, 12(%ebp)	 #, type
	jne	L4	 #,
	movl	8(%ebp), %eax	 # par, tmp91
	movl	(%eax), %eax	 # MEM[(int *)par_4(D)], _8
	movl	%eax, 4(%esp)	 # _8,
	movl	$LC1, (%esp)	 #,
	call	_printf	 #
L4:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB15:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	andl	$-16, %esp	 #,
	subl	$32, %esp	 #,
	call	___main	 #
	flds	LC3	 #
	fstps	20(%esp)	 # a
	movl	$0, 28(%esp)	 #, my_float
	movl	28(%esp), %eax	 # my_float, tmp90
	movl	%eax, 4(%esp)	 # tmp90,
	leal	20(%esp), %eax	 #, tmp91
	movl	%eax, (%esp)	 # tmp91,
	call	_boop	 #
	flds	LC4	 #
	fstps	16(%esp)	 # b
	movl	$1, 24(%esp)	 #, my_int
	movl	24(%esp), %eax	 # my_int, tmp93
	movl	%eax, 4(%esp)	 # tmp93,
	leal	16(%esp), %eax	 #, tmp94
	movl	%eax, (%esp)	 # tmp94,
	call	_boop	 #
	movl	$0, %eax	 #, _10
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.section .rdata,"dr"
	.align 4
LC3:
	.long	1086744166
	.align 4
LC4:
	.long	1086324736
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
