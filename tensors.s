	.file	"tensors.c"
 # GNU C11 (MinGW.org GCC-6.3.0-1) version 6.3.0 (mingw32)
 #	compiled by GNU C version 6.3.0, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/6.3.0/
 # tensors.c -march=x86-64 -Wall -Wextra -fverbose-asm
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
	.globl	_get_n_elements
	.def	_get_n_elements;	.scl	2;	.type	32;	.endef
_get_n_elements:
LFB17:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$16, %esp	 #,
	movl	8(%ebp), %eax	 # tensor, tmp94
	movl	(%eax), %eax	 # tensor_4(D)->n_dims, tmp95
	movl	%eax, -12(%ebp)	 # tmp95, n_dims
	movl	$1, -4(%ebp)	 #, n_elements
	movl	$0, -8(%ebp)	 #, i
	jmp	L2	 #
L3:
	movl	8(%ebp), %eax	 # tensor, tmp96
	movl	8(%eax), %eax	 # tensor_4(D)->size, _8
	movl	-8(%ebp), %edx	 # i, i.0_9
	sall	$2, %edx	 #, _10
	addl	%edx, %eax	 # _10, _11
	movl	(%eax), %eax	 # *_11, _12
	movl	-4(%ebp), %edx	 # n_elements, tmp98
	imull	%edx, %eax	 # tmp98, tmp97
	movl	%eax, -4(%ebp)	 # tmp97, n_elements
	addl	$1, -8(%ebp)	 #, i
L2:
	movl	-8(%ebp), %eax	 # i, tmp99
	cmpl	-12(%ebp), %eax	 # n_dims, tmp99
	jl	L3	 #,
	movl	-4(%ebp), %eax	 # n_elements, _15
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_create_tensor
	.def	_create_tensor;	.scl	2;	.type	32;	.endef
_create_tensor:
LFB18:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$40, %esp	 #,
	movl	$16, (%esp)	 #,
	call	_malloc	 #
	movl	%eax, -16(%ebp)	 # tmp114, new_tensor
	movl	-16(%ebp), %eax	 # new_tensor, tmp115
	movl	8(%ebp), %edx	 # n_dims, tmp116
	movl	%edx, (%eax)	 # tmp116, new_tensor_5->n_dims
	movl	8(%ebp), %eax	 # n_dims, n_dims.1_8
	sall	$2, %eax	 #, _9
	movl	%eax, (%esp)	 # _9,
	call	_malloc	 #
	movl	%eax, %edx	 # tmp117, _11
	movl	-16(%ebp), %eax	 # new_tensor, tmp118
	movl	%edx, 4(%eax)	 # _11, new_tensor_5->dim_names
	movl	8(%ebp), %eax	 # n_dims, n_dims.2_13
	sall	$2, %eax	 #, _14
	movl	%eax, (%esp)	 # _14,
	call	_malloc	 #
	movl	%eax, %edx	 # tmp119, _16
	movl	-16(%ebp), %eax	 # new_tensor, tmp120
	movl	%edx, 8(%eax)	 # _16, new_tensor_5->size
	movl	$0, -12(%ebp)	 #, i
	jmp	L6	 #
L7:
	movl	-16(%ebp), %eax	 # new_tensor, tmp121
	movl	4(%eax), %eax	 # new_tensor_5->dim_names, _19
	movl	-12(%ebp), %edx	 # i, i.3_20
	sall	$2, %edx	 #, _21
	addl	%eax, %edx	 # _19, _22
	movl	-12(%ebp), %eax	 # i, i.4_23
	leal	0(,%eax,4), %ecx	 #, _24
	movl	12(%ebp), %eax	 # dim_names, tmp122
	addl	%ecx, %eax	 # _24, _26
	movl	(%eax), %eax	 # *_26, _27
	movl	%eax, (%edx)	 # _27, *_22
	movl	-16(%ebp), %eax	 # new_tensor, tmp123
	movl	8(%eax), %eax	 # new_tensor_5->size, _29
	movl	-12(%ebp), %edx	 # i, i.5_30
	sall	$2, %edx	 #, _31
	addl	%eax, %edx	 # _29, _32
	movl	-12(%ebp), %eax	 # i, i.6_33
	leal	0(,%eax,4), %ecx	 #, _34
	movl	16(%ebp), %eax	 # size, tmp124
	addl	%ecx, %eax	 # _34, _36
	movl	(%eax), %eax	 # *_36, _37
	movl	%eax, (%edx)	 # _37, *_32
	addl	$1, -12(%ebp)	 #, i
L6:
	movl	-12(%ebp), %eax	 # i, tmp125
	cmpl	8(%ebp), %eax	 # n_dims, tmp125
	jl	L7	 #,
	movl	-16(%ebp), %eax	 # new_tensor, tmp126
	movl	%eax, (%esp)	 # tmp126,
	call	_get_n_elements	 #
	sall	$2, %eax	 #, _43
	movl	%eax, (%esp)	 # _43,
	call	_malloc	 #
	movl	%eax, -20(%ebp)	 # tmp127, new_data
	movl	-16(%ebp), %eax	 # new_tensor, tmp128
	movl	-20(%ebp), %edx	 # new_data, tmp129
	movl	%edx, 12(%eax)	 # tmp129, new_tensor_5->data
	movl	-16(%ebp), %eax	 # new_tensor, _47
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_create_and_fill_tensor
	.def	_create_and_fill_tensor;	.scl	2;	.type	32;	.endef
_create_and_fill_tensor:
LFB19:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$40, %esp	 #,
	movl	16(%ebp), %eax	 # size, tmp98
	movl	%eax, 8(%esp)	 # tmp98,
	movl	12(%ebp), %eax	 # dim_names, tmp99
	movl	%eax, 4(%esp)	 # tmp99,
	movl	8(%ebp), %eax	 # n_dims, tmp100
	movl	%eax, (%esp)	 # tmp100,
	call	_create_tensor	 #
	movl	%eax, -16(%ebp)	 # tmp101, tensor
	movl	$0, -12(%ebp)	 #, i
	jmp	L10	 #
L11:
	movl	-16(%ebp), %eax	 # tensor, tmp102
	movl	12(%eax), %eax	 # tensor_8->data, _12
	movl	-12(%ebp), %edx	 # i, i.7_13
	sall	$2, %edx	 #, _14
	addl	%edx, %eax	 # _14, _15
	movl	-12(%ebp), %edx	 # i, i.8_16
	leal	0(,%edx,4), %ecx	 #, _17
	movl	20(%ebp), %edx	 # data, tmp103
	addl	%ecx, %edx	 # _17, _19
	flds	(%edx)	 # *_19
	fstps	(%eax)	 # *_15
	addl	$1, -12(%ebp)	 #, i
L10:
	movl	-16(%ebp), %eax	 # tensor, tmp104
	movl	%eax, (%esp)	 # tmp104,
	call	_get_n_elements	 #
	cmpl	-12(%ebp), %eax	 # i, _11
	jg	L11	 #,
	movl	-16(%ebp), %eax	 # tensor, _23
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "dimension %s not in location names\0"
	.text
	.globl	_get_flat_idx
	.def	_get_flat_idx;	.scl	2;	.type	32;	.endef
_get_flat_idx:
LFB20:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$72, %esp	 #,
	movl	8(%ebp), %eax	 # tensor, tmp106
	movl	(%eax), %eax	 # tensor_13(D)->n_dims, tmp107
	movl	%eax, -36(%ebp)	 # tmp107, n_dims
	movl	8(%ebp), %eax	 # tensor, tmp108
	movl	4(%eax), %eax	 # tensor_13(D)->dim_names, tmp109
	movl	%eax, -40(%ebp)	 # tmp109, dim_names
	movl	$0, -12(%ebp)	 #, flat_idx
	movl	$1, -16(%ebp)	 #, section_size
	movl	-36(%ebp), %eax	 # n_dims, tmp113
	subl	$1, %eax	 #, tmp112
	movl	%eax, -20(%ebp)	 # tmp112, i
	jmp	L14	 #
L20:
	movl	-20(%ebp), %eax	 # i, i.9_20
	leal	0(,%eax,4), %edx	 #, _21
	movl	-40(%ebp), %eax	 # dim_names, tmp114
	addl	%edx, %eax	 # _21, _22
	movl	(%eax), %eax	 # *_22, tmp115
	movl	%eax, -44(%ebp)	 # tmp115, dim_name
	movl	$0, -28(%ebp)	 #, found
	movl	$0, -32(%ebp)	 #, j
	jmp	L15	 #
L17:
	movl	-32(%ebp), %eax	 # j, j.10_26
	leal	0(,%eax,4), %edx	 #, _27
	movl	12(%ebp), %eax	 # location_dim_names, tmp116
	addl	%edx, %eax	 # _27, _29
	movl	(%eax), %eax	 # *_29, _30
	movl	-44(%ebp), %edx	 # dim_name, tmp117
	movl	%edx, 4(%esp)	 # tmp117,
	movl	%eax, (%esp)	 # _30,
	call	_strcmp	 #
	testl	%eax, %eax	 # _31
	jne	L16	 #,
	movl	$1, -28(%ebp)	 #, found
	movl	-32(%ebp), %eax	 # j, j.11_33
	leal	0(,%eax,4), %edx	 #, _34
	movl	16(%ebp), %eax	 # location, tmp118
	addl	%edx, %eax	 # _34, _36
	movl	(%eax), %eax	 # *_36, tmp119
	movl	%eax, -24(%ebp)	 # tmp119, location_idx
L16:
	addl	$1, -32(%ebp)	 #, j
L15:
	movl	-32(%ebp), %eax	 # j, tmp120
	cmpl	-36(%ebp), %eax	 # n_dims, tmp120
	jl	L17	 #,
	cmpl	$0, -28(%ebp)	 #, found
	jne	L18	 #,
	movl	-44(%ebp), %eax	 # dim_name, tmp121
	movl	%eax, 4(%esp)	 # tmp121,
	movl	$LC1, (%esp)	 #,
	call	_printf	 #
	movl	$-1, %eax	 #, _10
	jmp	L19	 #
L18:
	movl	-24(%ebp), %eax	 # location_idx, tmp122
	imull	-16(%ebp), %eax	 # section_size, _39
	addl	%eax, -12(%ebp)	 # _39, flat_idx
	movl	8(%ebp), %eax	 # tensor, tmp123
	movl	8(%eax), %eax	 # tensor_13(D)->size, _41
	movl	-20(%ebp), %edx	 # i, i.12_42
	sall	$2, %edx	 #, _43
	addl	%edx, %eax	 # _43, _44
	movl	(%eax), %eax	 # *_44, _45
	movl	-16(%ebp), %edx	 # section_size, tmp125
	imull	%edx, %eax	 # tmp125, tmp124
	movl	%eax, -16(%ebp)	 # tmp124, section_size
	subl	$1, -20(%ebp)	 #, i
L14:
	cmpl	$0, -20(%ebp)	 #, i
	jns	L20	 #,
	movl	-12(%ebp), %eax	 # flat_idx, _10
L19:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC2:
	.ascii "first\0"
LC3:
	.ascii "second\0"
LC10:
	.ascii "%f\12\0"
LC11:
	.ascii "%d\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB21:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	andl	$-16, %esp	 #,
	subl	$80, %esp	 #,
	call	___main	 #
	movl	$2, 76(%esp)	 #, n_dims
	movl	76(%esp), %eax	 # n_dims, n_dims.13_2
	sall	$2, %eax	 #, _3
	movl	%eax, (%esp)	 # _3,
	call	_malloc	 #
	movl	%eax, 72(%esp)	 # tmp96, dim_names
	movl	72(%esp), %eax	 # dim_names, tmp97
	movl	$LC2, (%eax)	 #, *dim_names_6
	movl	72(%esp), %eax	 # dim_names, tmp98
	addl	$4, %eax	 #, _8
	movl	$LC3, (%eax)	 #, *_8
	movl	$3, 56(%esp)	 #, size
	movl	$2, 60(%esp)	 #, size
	fld1
	fstps	32(%esp)	 # data
	flds	LC5	 #
	fstps	36(%esp)	 # data
	flds	LC6	 #
	fstps	40(%esp)	 # data
	flds	LC7	 #
	fstps	44(%esp)	 # data
	flds	LC8	 #
	fstps	48(%esp)	 # data
	flds	LC9	 #
	fstps	52(%esp)	 # data
	leal	32(%esp), %eax	 #, tmp105
	movl	%eax, 12(%esp)	 # tmp105,
	leal	56(%esp), %eax	 #, tmp106
	movl	%eax, 8(%esp)	 # tmp106,
	movl	72(%esp), %eax	 # dim_names, tmp107
	movl	%eax, 4(%esp)	 # tmp107,
	movl	76(%esp), %eax	 # n_dims, tmp108
	movl	%eax, (%esp)	 # tmp108,
	call	_create_and_fill_tensor	 #
	movl	%eax, 68(%esp)	 # tmp109, tensor
	movl	68(%esp), %eax	 # tensor, tmp110
	movl	12(%eax), %eax	 # tensor_19->data, _20
	addl	$16, %eax	 #, _21
	flds	(%eax)	 # *_21
	fstpl	4(%esp)	 #
	movl	$LC10, (%esp)	 #,
	call	_printf	 #
	movl	$9, 24(%esp)	 #, idxs
	movl	$5, 28(%esp)	 #, idxs
	leal	24(%esp), %eax	 #, tmp111
	movl	%eax, 8(%esp)	 # tmp111,
	movl	72(%esp), %eax	 # dim_names, tmp112
	movl	%eax, 4(%esp)	 # tmp112,
	movl	68(%esp), %eax	 # tensor, tmp113
	movl	%eax, (%esp)	 # tmp113,
	call	_get_flat_idx	 #
	movl	%eax, 64(%esp)	 # tmp114, flat_idx
	movl	64(%esp), %eax	 # flat_idx, tmp115
	movl	%eax, 4(%esp)	 # tmp115,
	movl	$LC11, (%esp)	 #,
	call	_printf	 #
	movl	$0, %eax	 #, _33
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.section .rdata,"dr"
	.align 4
LC5:
	.long	1073741824
	.align 4
LC6:
	.long	1077936128
	.align 4
LC7:
	.long	1082130432
	.align 4
LC8:
	.long	1084227584
	.align 4
LC9:
	.long	1086324736
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
