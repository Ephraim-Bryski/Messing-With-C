	.file	"matrices.c"
 # GNU C11 (MinGW.org GCC-6.3.0-1) version 6.3.0 (mingw32)
 #	compiled by GNU C version 6.3.0, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/6.3.0/
 # matrices.c -march=x86-64 -Wall -Wextra -fverbose-asm
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

	.text
	.globl	_create_matrix
	.def	_create_matrix;	.scl	2;	.type	32;	.endef
_create_matrix:
LFB14:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$40, %esp	 #,
	movl	8(%ebp), %eax	 # n_rows, tmp94
	imull	12(%ebp), %eax	 # n_cols, tmp93
	movl	%eax, -12(%ebp)	 # tmp93, n_elements
	movl	-12(%ebp), %eax	 # n_elements, n_elements.0_4
	addl	$2, %eax	 #, _5
	sall	$2, %eax	 #, _6
	movl	%eax, -16(%ebp)	 # _6, size
	movl	-16(%ebp), %eax	 # size, size.1_8
	movl	%eax, (%esp)	 # size.1_8,
	call	_malloc	 #
	movl	%eax, -20(%ebp)	 # tmp95, matrix
	movl	-20(%ebp), %eax	 # matrix, tmp96
	movl	8(%ebp), %edx	 # n_rows, tmp97
	movl	%edx, (%eax)	 # tmp97, matrix_11->n_rows
	movl	-20(%ebp), %eax	 # matrix, tmp98
	movl	12(%ebp), %edx	 # n_cols, tmp99
	movl	%edx, 4(%eax)	 # tmp99, matrix_11->n_cols
	movl	-20(%ebp), %eax	 # matrix, _14
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_create_and_fill_matrix
	.def	_create_and_fill_matrix;	.scl	2;	.type	32;	.endef
_create_and_fill_matrix:
LFB15:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$40, %esp	 #,
	movl	16(%ebp), %eax	 # n_cols, tmp93
	movl	%eax, 4(%esp)	 # tmp93,
	movl	12(%ebp), %eax	 # n_rows, tmp94
	movl	%eax, (%esp)	 # tmp94,
	call	_create_matrix	 #
	movl	%eax, -16(%ebp)	 # tmp95, matrix
	movl	12(%ebp), %eax	 # n_rows, tmp97
	imull	16(%ebp), %eax	 # n_cols, tmp96
	movl	%eax, -20(%ebp)	 # tmp96, n_elements
	movl	$0, -12(%ebp)	 #, i
	jmp	L4	 #
L5:
	movl	-12(%ebp), %eax	 # i, i.2_10
	leal	0(,%eax,4), %edx	 #, _11
	movl	8(%ebp), %eax	 # data, tmp98
	addl	%edx, %eax	 # _11, _13
	flds	(%eax)	 # *_13
	movl	-16(%ebp), %eax	 # matrix, tmp99
	movl	-12(%ebp), %edx	 # i, tmp100
	fstps	8(%eax,%edx,4)	 # matrix_7->data
	addl	$1, -12(%ebp)	 #, i
L4:
	movl	-12(%ebp), %eax	 # i, tmp101
	cmpl	-20(%ebp), %eax	 # n_elements, tmp101
	jl	L5	 #,
	movl	-16(%ebp), %eax	 # matrix, _17
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_add
	.def	_add;	.scl	2;	.type	32;	.endef
_add:
LFB16:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	flds	8(%ebp)	 # a
	fadds	12(%ebp)	 # b
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_get_flat_idx
	.def	_get_flat_idx;	.scl	2;	.type	32;	.endef
_get_flat_idx:
LFB17:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax	 # matrix, tmp91
	movl	4(%eax), %eax	 # matrix_2(D)->n_cols, _3
	imull	12(%ebp), %eax	 # row_idx, _3
	movl	%eax, %edx	 # _3, _5
	movl	16(%ebp), %eax	 # col_idx, tmp92
	addl	%edx, %eax	 # _5, _7
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.section .rdata,"dr"
LC1:
	.ascii "%f  \0"
	.text
	.globl	_print_matrix
	.def	_print_matrix;	.scl	2;	.type	32;	.endef
_print_matrix:
LFB18:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$40, %esp	 #,
	movl	$0, -12(%ebp)	 #, i
	jmp	L12	 #
L15:
	movl	$0, -16(%ebp)	 #, j
	jmp	L13	 #
L14:
	movl	-16(%ebp), %eax	 # j, tmp92
	movl	%eax, 8(%esp)	 # tmp92,
	movl	-12(%ebp), %eax	 # i, tmp93
	movl	%eax, 4(%esp)	 # tmp93,
	movl	8(%ebp), %eax	 # matrix, tmp94
	movl	%eax, (%esp)	 # tmp94,
	call	_get_flat_idx	 #
	movl	%eax, %edx	 #, _12
	movl	8(%ebp), %eax	 # matrix, tmp95
	flds	8(%eax,%edx,4)	 # matrix_7(D)->data
	fstpl	4(%esp)	 #
	movl	$LC1, (%esp)	 #,
	call	_printf	 #
	addl	$1, -16(%ebp)	 #, j
L13:
	movl	8(%ebp), %eax	 # matrix, tmp96
	movl	4(%eax), %eax	 # matrix_7(D)->n_cols, _10
	cmpl	-16(%ebp), %eax	 # j, _10
	jg	L14	 #,
	movl	$10, (%esp)	 #,
	call	_putchar	 #
	addl	$1, -12(%ebp)	 #, i
L12:
	movl	8(%ebp), %eax	 # matrix, tmp97
	movl	(%eax), %eax	 # matrix_7(D)->n_rows, _8
	cmpl	-12(%ebp), %eax	 # i, _8
	jg	L15	 #,
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
LC2:
	.ascii " not equal size ):<\0"
	.text
	.globl	_element_wise
	.def	_element_wise;	.scl	2;	.type	32;	.endef
_element_wise:
LFB19:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$88, %esp	 #,
	movl	8(%ebp), %eax	 # matrix1, tmp89
	movl	(%eax), %eax	 # matrix1_7(D)->n_rows, tmp90
	movl	%eax, -20(%ebp)	 # tmp90, n_rows1
	movl	12(%ebp), %eax	 # matrix2, tmp91
	movl	(%eax), %eax	 # matrix2_9(D)->n_rows, tmp92
	movl	%eax, -24(%ebp)	 # tmp92, n_rows2
	movl	8(%ebp), %eax	 # matrix1, tmp93
	movl	4(%eax), %eax	 # matrix1_7(D)->n_cols, tmp94
	movl	%eax, -28(%ebp)	 # tmp94, n_cols1
	movl	12(%ebp), %eax	 # matrix2, tmp95
	movl	4(%eax), %eax	 # matrix2_9(D)->n_cols, tmp96
	movl	%eax, -32(%ebp)	 # tmp96, n_cols2
	movl	-20(%ebp), %eax	 # n_rows1, tmp97
	cmpl	-24(%ebp), %eax	 # n_rows2, tmp97
	jne	L17	 #,
	movl	-28(%ebp), %eax	 # n_cols1, tmp98
	cmpl	-32(%ebp), %eax	 # n_cols2, tmp98
	je	L18	 #,
L17:
	movl	$LC2, (%esp)	 #,
	call	_puts	 #
L18:
	movl	-28(%ebp), %eax	 # n_cols1, tmp99
	movl	%eax, 4(%esp)	 # tmp99,
	movl	-20(%ebp), %eax	 # n_rows1, tmp100
	movl	%eax, (%esp)	 # tmp100,
	call	_create_matrix	 #
	movl	%eax, -36(%ebp)	 # tmp101, matrix_out
	movl	$0, -12(%ebp)	 #, i
	jmp	L19	 #
L22:
	movl	$0, -16(%ebp)	 #, j
	jmp	L20	 #
L21:
	movl	-16(%ebp), %eax	 # j, tmp102
	movl	%eax, 8(%esp)	 # tmp102,
	movl	-12(%ebp), %eax	 # i, tmp103
	movl	%eax, 4(%esp)	 # tmp103,
	movl	8(%ebp), %eax	 # matrix1, tmp104
	movl	%eax, (%esp)	 # tmp104,
	call	_get_flat_idx	 #
	movl	%eax, -40(%ebp)	 # tmp105, flat_idx
	movl	8(%ebp), %eax	 # matrix1, tmp106
	movl	-40(%ebp), %edx	 # flat_idx, tmp107
	flds	8(%eax,%edx,4)	 # matrix1_7(D)->data
	fstps	-44(%ebp)	 # value1
	movl	12(%ebp), %eax	 # matrix2, tmp109
	movl	-40(%ebp), %edx	 # flat_idx, tmp110
	flds	8(%eax,%edx,4)	 # matrix2_9(D)->data
	fstps	-48(%ebp)	 # value2
	flds	-48(%ebp)	 # value2
	fstps	4(%esp)	 #
	flds	-44(%ebp)	 # value1
	fstps	(%esp)	 #
	movl	16(%ebp), %eax	 # op, tmp114
	call	*%eax	 # tmp114
	fstps	-60(%ebp)	 # %sfp
	movl	-60(%ebp), %eax	 # %sfp, tmp115
	movl	%eax, -52(%ebp)	 # tmp115, result
	movl	-36(%ebp), %eax	 # matrix_out, tmp116
	movl	-40(%ebp), %edx	 # flat_idx, tmp117
	flds	-52(%ebp)	 # result
	fstps	8(%eax,%edx,4)	 # matrix_out_15->data
	addl	$1, -16(%ebp)	 #, j
L20:
	movl	-16(%ebp), %eax	 # j, tmp119
	cmpl	-28(%ebp), %eax	 # n_cols1, tmp119
	jl	L21	 #,
	addl	$1, -12(%ebp)	 #, i
L19:
	movl	-12(%ebp), %eax	 # i, tmp120
	cmpl	-20(%ebp), %eax	 # n_rows1, tmp120
	jl	L22	 #,
	movl	-36(%ebp), %eax	 # matrix_out, _28
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_get_section
	.def	_get_section;	.scl	2;	.type	32;	.endef
_get_section:
LFB20:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$72, %esp	 #,
	movl	16(%ebp), %eax	 # row_high, tmp99
	subl	12(%ebp), %eax	 # row_low, tmp98
	movl	%eax, -20(%ebp)	 # tmp98, n_rows_out
	movl	24(%ebp), %eax	 # col_high, tmp103
	subl	20(%ebp), %eax	 # col_low, tmp102
	movl	%eax, -24(%ebp)	 # tmp102, n_cols_out
	movl	-24(%ebp), %eax	 # n_cols_out, tmp104
	movl	%eax, 4(%esp)	 # tmp104,
	movl	-20(%ebp), %eax	 # n_rows_out, tmp105
	movl	%eax, (%esp)	 # tmp105,
	call	_create_matrix	 #
	movl	%eax, -28(%ebp)	 # tmp106, matrix_out
	movl	8(%ebp), %eax	 # matrix_in, tmp110
	addl	$8, %eax	 #, tmp109
	movl	%eax, -32(%ebp)	 # tmp109, data_in
	movl	-28(%ebp), %eax	 # matrix_out, tmp114
	addl	$8, %eax	 #, tmp113
	movl	%eax, -36(%ebp)	 # tmp113, data_out
	movl	$0, -12(%ebp)	 #, i
	jmp	L25	 #
L28:
	movl	-12(%ebp), %edx	 # i, tmp119
	movl	12(%ebp), %eax	 # row_low, tmp120
	addl	%edx, %eax	 # tmp119, tmp118
	movl	%eax, -40(%ebp)	 # tmp118, i_shifted
	movl	$0, -16(%ebp)	 #, j
	jmp	L26	 #
L27:
	movl	-16(%ebp), %edx	 # j, tmp125
	movl	20(%ebp), %eax	 # col_low, tmp126
	addl	%edx, %eax	 # tmp125, tmp124
	movl	%eax, -44(%ebp)	 # tmp124, j_shifted
	movl	-44(%ebp), %eax	 # j_shifted, tmp127
	movl	%eax, 8(%esp)	 # tmp127,
	movl	-40(%ebp), %eax	 # i_shifted, tmp128
	movl	%eax, 4(%esp)	 # tmp128,
	movl	8(%ebp), %eax	 # matrix_in, tmp129
	movl	%eax, (%esp)	 # tmp129,
	call	_get_flat_idx	 #
	movl	%eax, -48(%ebp)	 # tmp130, flat_idx_in
	movl	-16(%ebp), %eax	 # j, tmp131
	movl	%eax, 8(%esp)	 # tmp131,
	movl	-12(%ebp), %eax	 # i, tmp132
	movl	%eax, 4(%esp)	 # tmp132,
	movl	-28(%ebp), %eax	 # matrix_out, tmp133
	movl	%eax, (%esp)	 # tmp133,
	call	_get_flat_idx	 #
	movl	%eax, -52(%ebp)	 # tmp134, flat_idx_out
	movl	-52(%ebp), %eax	 # flat_idx_out, flat_idx_out.3_25
	leal	0(,%eax,4), %edx	 #, _26
	movl	-36(%ebp), %eax	 # data_out, tmp135
	addl	%edx, %eax	 # _26, _27
	movl	-48(%ebp), %edx	 # flat_idx_in, flat_idx_in.4_28
	leal	0(,%edx,4), %ecx	 #, _29
	movl	-32(%ebp), %edx	 # data_in, tmp136
	addl	%ecx, %edx	 # _29, _30
	flds	(%edx)	 # *_30
	fstps	(%eax)	 # *_27
	addl	$1, -16(%ebp)	 #, j
L26:
	movl	-16(%ebp), %eax	 # j, tmp137
	cmpl	-24(%ebp), %eax	 # n_cols_out, tmp137
	jl	L27	 #,
	addl	$1, -12(%ebp)	 #, i
L25:
	movl	-12(%ebp), %eax	 # i, tmp138
	cmpl	-20(%ebp), %eax	 # n_rows_out, tmp138
	jl	L28	 #,
	movl	-28(%ebp), %eax	 # matrix_out, _35
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.globl	_transpose
	.def	_transpose;	.scl	2;	.type	32;	.endef
_transpose:
LFB21:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$72, %esp	 #,
	movl	8(%ebp), %eax	 # matrix_in, tmp96
	movl	(%eax), %eax	 # matrix_in_6(D)->n_rows, tmp97
	movl	%eax, -20(%ebp)	 # tmp97, n_rows_old
	movl	8(%ebp), %eax	 # matrix_in, tmp98
	movl	4(%eax), %eax	 # matrix_in_6(D)->n_cols, tmp99
	movl	%eax, -24(%ebp)	 # tmp99, n_cols_old
	movl	-20(%ebp), %eax	 # n_rows_old, tmp100
	movl	%eax, 4(%esp)	 # tmp100,
	movl	-24(%ebp), %eax	 # n_cols_old, tmp101
	movl	%eax, (%esp)	 # tmp101,
	call	_create_matrix	 #
	movl	%eax, -28(%ebp)	 # tmp102, transposed
	movl	8(%ebp), %eax	 # matrix_in, tmp106
	addl	$8, %eax	 #, tmp105
	movl	%eax, -32(%ebp)	 # tmp105, data_in
	movl	-28(%ebp), %eax	 # transposed, tmp110
	addl	$8, %eax	 #, tmp109
	movl	%eax, -36(%ebp)	 # tmp109, data_out
	movl	$0, -12(%ebp)	 #, i
	jmp	L31	 #
L34:
	movl	$0, -16(%ebp)	 #, j
	jmp	L32	 #
L33:
	movl	-16(%ebp), %eax	 # j, tmp111
	movl	%eax, 8(%esp)	 # tmp111,
	movl	-12(%ebp), %eax	 # i, tmp112
	movl	%eax, 4(%esp)	 # tmp112,
	movl	8(%ebp), %eax	 # matrix_in, tmp113
	movl	%eax, (%esp)	 # tmp113,
	call	_get_flat_idx	 #
	movl	%eax, -40(%ebp)	 # tmp114, flat_idx_old
	movl	-12(%ebp), %eax	 # i, tmp115
	movl	%eax, 8(%esp)	 # tmp115,
	movl	-16(%ebp), %eax	 # j, tmp116
	movl	%eax, 4(%esp)	 # tmp116,
	movl	-28(%ebp), %eax	 # transposed, tmp117
	movl	%eax, (%esp)	 # tmp117,
	call	_get_flat_idx	 #
	movl	%eax, -44(%ebp)	 # tmp118, flat_idx_new
	movl	-44(%ebp), %eax	 # flat_idx_new, flat_idx_new.5_19
	leal	0(,%eax,4), %edx	 #, _20
	movl	-36(%ebp), %eax	 # data_out, tmp119
	addl	%edx, %eax	 # _20, _21
	movl	-40(%ebp), %edx	 # flat_idx_old, flat_idx_old.6_22
	leal	0(,%edx,4), %ecx	 #, _23
	movl	-32(%ebp), %edx	 # data_in, tmp120
	addl	%ecx, %edx	 # _23, _24
	flds	(%edx)	 # *_24
	fstps	(%eax)	 # *_21
	addl	$1, -16(%ebp)	 #, j
L32:
	movl	-16(%ebp), %eax	 # j, tmp121
	cmpl	-24(%ebp), %eax	 # n_cols_old, tmp121
	jl	L33	 #,
	addl	$1, -12(%ebp)	 #, i
L31:
	movl	-12(%ebp), %eax	 # i, tmp122
	cmpl	-20(%ebp), %eax	 # n_rows_old, tmp122
	jl	L34	 #,
	movl	-28(%ebp), %eax	 # transposed, _29
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB22:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	andl	$-16, %esp	 #,
	subl	$96, %esp	 #,
	call	___main	 #
	fld1
	fstps	56(%esp)	 # arr
	flds	LC4	 #
	fstps	60(%esp)	 # arr
	flds	LC5	 #
	fstps	64(%esp)	 # arr
	flds	LC6	 #
	fstps	68(%esp)	 # arr
	flds	LC7	 #
	fstps	72(%esp)	 # arr
	flds	LC8	 #
	fstps	76(%esp)	 # arr
	movl	$3, 8(%esp)	 #,
	movl	$2, 4(%esp)	 #,
	leal	56(%esp), %eax	 #, tmp96
	movl	%eax, (%esp)	 # tmp96,
	call	_create_and_fill_matrix	 #
	movl	%eax, 92(%esp)	 # tmp97, matrix1
	fld1
	fstps	32(%esp)	 # arr2
	flds	LC7	 #
	fstps	36(%esp)	 # arr2
	flds	LC5	 #
	fstps	40(%esp)	 # arr2
	flds	LC6	 #
	fstps	44(%esp)	 # arr2
	flds	LC7	 #
	fstps	48(%esp)	 # arr2
	flds	LC8	 #
	fstps	52(%esp)	 # arr2
	movl	$3, 8(%esp)	 #,
	movl	$2, 4(%esp)	 #,
	leal	32(%esp), %eax	 #, tmp104
	movl	%eax, (%esp)	 # tmp104,
	call	_create_and_fill_matrix	 #
	movl	%eax, 88(%esp)	 # tmp105, matrix2
	movl	$_add, 8(%esp)	 #,
	movl	88(%esp), %eax	 # matrix2, tmp106
	movl	%eax, 4(%esp)	 # tmp106,
	movl	92(%esp), %eax	 # matrix1, tmp107
	movl	%eax, (%esp)	 # tmp107,
	call	_element_wise	 #
	movl	%eax, 84(%esp)	 # tmp108, sum
	movl	$3, 16(%esp)	 #,
	movl	$1, 12(%esp)	 #,
	movl	$2, 8(%esp)	 #,
	movl	$0, 4(%esp)	 #,
	movl	92(%esp), %eax	 # matrix1, tmp109
	movl	%eax, (%esp)	 # tmp109,
	call	_get_section	 #
	movl	%eax, 80(%esp)	 # tmp110, section
	movl	92(%esp), %eax	 # matrix1, tmp111
	movl	%eax, (%esp)	 # tmp111,
	call	_print_matrix	 #
	movl	$10, (%esp)	 #,
	call	_putchar	 #
	movl	92(%esp), %eax	 # matrix1, tmp112
	movl	%eax, (%esp)	 # tmp112,
	call	_transpose	 #
	movl	%eax, (%esp)	 # _25,
	call	_print_matrix	 #
	movl	$0, %eax	 #, _29
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.section .rdata,"dr"
	.align 4
LC4:
	.long	1073741824
	.align 4
LC5:
	.long	1077936128
	.align 4
LC6:
	.long	1082130432
	.align 4
LC7:
	.long	1084227584
	.align 4
LC8:
	.long	1086324736
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
