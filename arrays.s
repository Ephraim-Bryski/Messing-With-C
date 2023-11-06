	.file	"arrays.c"
 # GNU C11 (MinGW.org GCC-6.3.0-1) version 6.3.0 (mingw32)
 #	compiled by GNU C version 6.3.0, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/6.3.0/
 # arrays.c -march=x86-64 -Wall -Wextra -fsanitize=address -fverbose-asm
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

	.text
	.globl	_create_array
	.def	_create_array;	.scl	2;	.type	32;	.endef
_create_array:
LASANPC14:
LFB14:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%edi	 #
	pushl	%esi	 #
	pushl	%ebx	 #
	subl	$60, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$8, (%esp)	 #,
	call	_malloc	 #
	movl	%eax, -36(%ebp)	 # tmp145, new_array
	movl	12(%ebp), %eax	 # size, size.0_7
	shrl	$2, %eax	 #, _8
	movl	%eax, -32(%ebp)	 # _8, n_elements
	movl	-36(%ebp), %eax	 # new_array, _27
	movl	%eax, %edx	 # _33, _34
	shrl	$3, %edx	 #, _34
	addl	$536870912, %edx	 #, _35
	movzbl	(%edx), %edx	 # *_36, _37
	testb	%dl, %dl	 # _37
	setne	%cl	 #, _38
	movl	%eax, %ebx	 # _33, _39
	andl	$7, %ebx	 #, _39
	addl	$3, %ebx	 #, _41
	cmpb	%dl, %bl	 # _37, _41
	setge	%dl	 #, _42
	andl	%ecx, %edx	 # _38, _43
	testb	%dl, %dl	 # _43
	je	L2	 #,
	movl	%eax, (%esp)	 # _33,
	call	___asan_report_store4	 #
L2:
	movl	-36(%ebp), %eax	 # new_array, tmp146
	movl	-32(%ebp), %edx	 # n_elements, tmp147
	movl	%edx, (%eax)	 # tmp147, new_array_5->length
	movl	12(%ebp), %eax	 # size, size.1_11
	movl	%eax, (%esp)	 # size.1_11,
	call	_malloc	 #
	movl	%eax, -28(%ebp)	 # tmp148, items
	movl	$0, -40(%ebp)	 #, i
	jmp	L3	 #
L6:
	movl	-40(%ebp), %eax	 # i, i.2_15
	leal	0(,%eax,4), %edx	 #, _16
	movl	-28(%ebp), %eax	 # items, tmp149
	leal	(%edx,%eax), %edi	 #, _17
	movl	-40(%ebp), %eax	 # i, i.3_18
	leal	0(,%eax,4), %edx	 #, _19
	movl	8(%ebp), %eax	 # pointer, tmp150
	leal	(%edx,%eax), %ebx	 #, _21
	movl	%ebx, %eax	 # _21, _44
	movl	%eax, %edx	 # _44, _45
	shrl	$3, %edx	 #, _45
	addl	$536870912, %edx	 #, _46
	movzbl	(%edx), %edx	 # *_47, _48
	testb	%dl, %dl	 # _48
	setne	-44(%ebp)	 #, %sfp
	movl	%eax, %esi	 # _44, _50
	andl	$7, %esi	 #, _50
	leal	3(%esi), %ecx	 #, _52
	cmpb	%dl, %cl	 # _48, _52
	setge	%dl	 #, _53
	andb	-44(%ebp), %dl	 # %sfp, _54
	testb	%dl, %dl	 # _54
	je	L4	 #,
	movl	%eax, (%esp)	 # _44,
	call	___asan_report_load4	 #
L4:
	movl	(%ebx), %eax	 # *_21, _22
	movl	%eax, -44(%ebp)	 # _22, %sfp
	movl	%edi, %eax	 # _17, _55
	movl	%eax, %edx	 # _55, _56
	shrl	$3, %edx	 #, _56
	addl	$536870912, %edx	 #, _57
	movzbl	(%edx), %edx	 # *_58, _59
	testb	%dl, %dl	 # _59
	setne	-45(%ebp)	 #, %sfp
	movzbl	-45(%ebp), %ecx	 # %sfp, _60
	movl	%eax, %esi	 # _55, _61
	andl	$7, %esi	 #, _61
	leal	3(%esi), %ebx	 #, _63
	cmpb	%dl, %bl	 # _59, _63
	setge	%dl	 #, _64
	andl	%ecx, %edx	 # _60, _65
	testb	%dl, %dl	 # _65
	je	L5	 #,
	movl	%eax, (%esp)	 # _55,
	call	___asan_report_store4	 #
L5:
	movl	-44(%ebp), %eax	 # %sfp, _22
	movl	%eax, (%edi)	 # _22, *_17
	addl	$1, -40(%ebp)	 #, i
L3:
	movl	-40(%ebp), %eax	 # i, tmp151
	cmpl	-32(%ebp), %eax	 # n_elements, tmp151
	jl	L6	 #,
	movl	-36(%ebp), %eax	 # new_array, tmp152
	addl	$4, %eax	 #, _28
	movl	%eax, %edx	 # _66, _67
	shrl	$3, %edx	 #, _67
	addl	$536870912, %edx	 #, _68
	movzbl	(%edx), %edx	 # *_69, _70
	testb	%dl, %dl	 # _70
	setne	%cl	 #, _71
	movl	%eax, %ebx	 # _66, _72
	andl	$7, %ebx	 #, _72
	addl	$3, %ebx	 #, _74
	cmpb	%dl, %bl	 # _70, _74
	setge	%dl	 #, _75
	andl	%ecx, %edx	 # _71, _76
	testb	%dl, %dl	 # _76
	je	L7	 #,
	movl	%eax, (%esp)	 # _66,
	call	___asan_report_store4	 #
L7:
	movl	-36(%ebp), %eax	 # new_array, tmp153
	movl	-28(%ebp), %edx	 # items, tmp154
	movl	%edx, 4(%eax)	 # tmp154, new_array_5->items
	movl	-36(%ebp), %eax	 # new_array, _26
	addl	$60, %esp	 #,
	popl	%ebx	 #
	.cfi_restore 3
	popl	%esi	 #
	.cfi_restore 6
	popl	%edi	 #
	.cfi_restore 7
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
	.align 32
LC0:
	.ascii "%d,\0"
	.space 60
	.align 32
LC1:
	.ascii "]\0"
	.space 62
	.text
	.globl	_print_array
	.def	_print_array;	.scl	2;	.type	32;	.endef
_print_array:
LASANPC15:
LFB15:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%esi	 #
	pushl	%ebx	 #
	subl	$48, %esp	 #,
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %eax	 # arr, _16
	movl	%eax, %edx	 # _21, _22
	shrl	$3, %edx	 #, _22
	addl	$536870912, %edx	 #, _23
	movzbl	(%edx), %edx	 # *_24, _25
	testb	%dl, %dl	 # _25
	setne	%cl	 #, _26
	movl	%eax, %ebx	 # _21, _27
	andl	$7, %ebx	 #, _27
	addl	$3, %ebx	 #, _29
	cmpb	%dl, %bl	 # _25, _29
	setge	%dl	 #, _30
	andl	%ecx, %edx	 # _26, _31
	testb	%dl, %dl	 # _31
	je	L10	 #,
	movl	%eax, (%esp)	 # _21,
	call	___asan_report_load4	 #
L10:
	movl	8(%ebp), %eax	 # arr, tmp126
	movl	(%eax), %eax	 # arr_4(D)->length, tmp127
	movl	%eax, -16(%ebp)	 # tmp127, arr_length
	movl	8(%ebp), %eax	 # arr, tmp128
	addl	$4, %eax	 #, _17
	movl	%eax, %edx	 # _32, _33
	shrl	$3, %edx	 #, _33
	addl	$536870912, %edx	 #, _34
	movzbl	(%edx), %edx	 # *_35, _36
	testb	%dl, %dl	 # _36
	setne	%cl	 #, _37
	movl	%eax, %ebx	 # _32, _38
	andl	$7, %ebx	 #, _38
	addl	$3, %ebx	 #, _40
	cmpb	%dl, %bl	 # _36, _40
	setge	%dl	 #, _41
	andl	%ecx, %edx	 # _37, _42
	testb	%dl, %dl	 # _42
	je	L11	 #,
	movl	%eax, (%esp)	 # _32,
	call	___asan_report_load4	 #
L11:
	movl	8(%ebp), %eax	 # arr, tmp129
	movl	4(%eax), %eax	 # arr_4(D)->items, tmp130
	movl	%eax, -12(%ebp)	 # tmp130, items
	movl	$91, (%esp)	 #,
	call	_putchar	 #
	movl	$0, -20(%ebp)	 #, i
	jmp	L12	 #
L14:
	movl	-20(%ebp), %eax	 # i, i.4_9
	leal	0(,%eax,4), %edx	 #, _10
	movl	-12(%ebp), %eax	 # items, tmp131
	leal	(%edx,%eax), %ecx	 #, _11
	movl	%ecx, %eax	 # _11, _43
	movl	%eax, %edx	 # _43, _44
	shrl	$3, %edx	 #, _44
	addl	$536870912, %edx	 #, _45
	movzbl	(%edx), %edx	 # *_46, _47
	testb	%dl, %dl	 # _47
	setne	-25(%ebp)	 #, %sfp
	movl	%eax, %esi	 # _43, _49
	andl	$7, %esi	 #, _49
	leal	3(%esi), %ebx	 #, _51
	cmpb	%dl, %bl	 # _47, _51
	setge	%dl	 #, _52
	andb	-25(%ebp), %dl	 # %sfp, _53
	testb	%dl, %dl	 # _53
	je	L13	 #,
	movl	%eax, (%esp)	 # _43,
	call	___asan_report_load4	 #
L13:
	movl	(%ecx), %eax	 # *_11, _12
	movl	%eax, 4(%esp)	 # _12,
	movl	$LC0, (%esp)	 #,
	call	_printf	 #
	addl	$1, -20(%ebp)	 #, i
L12:
	movl	-20(%ebp), %eax	 # i, tmp132
	cmpl	-16(%ebp), %eax	 # arr_length, tmp132
	jl	L14	 #,
	movl	$LC1, (%esp)	 #,
	call	_puts	 #
	nop
	addl	$48, %esp	 #,
	popl	%ebx	 #
	.cfi_restore 3
	popl	%esi	 #
	.cfi_restore 6
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_remove_element
	.def	_remove_element;	.scl	2;	.type	32;	.endef
_remove_element:
LASANPC16:
LFB16:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%edi	 #
	pushl	%esi	 #
	pushl	%ebx	 #
	subl	$60, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax	 # arr, _21
	movl	%eax, %edx	 # _29, _30
	shrl	$3, %edx	 #, _30
	addl	$536870912, %edx	 #, _31
	movzbl	(%edx), %edx	 # *_32, _33
	testb	%dl, %dl	 # _33
	setne	%cl	 #, _34
	movl	%eax, %ebx	 # _29, _35
	andl	$7, %ebx	 #, _35
	addl	$3, %ebx	 #, _37
	cmpb	%dl, %bl	 # _33, _37
	setge	%dl	 #, _38
	andl	%ecx, %edx	 # _34, _39
	testb	%dl, %dl	 # _39
	je	L16	 #,
	movl	%eax, (%esp)	 # _29,
	call	___asan_report_load4	 #
L16:
	movl	8(%ebp), %eax	 # arr, tmp154
	movl	(%eax), %eax	 # arr_4(D)->length, tmp155
	movl	%eax, -32(%ebp)	 # tmp155, n_elements
	movl	8(%ebp), %eax	 # arr, tmp156
	addl	$4, %eax	 #, _22
	movl	%eax, %edx	 # _40, _41
	shrl	$3, %edx	 #, _41
	addl	$536870912, %edx	 #, _42
	movzbl	(%edx), %edx	 # *_43, _44
	testb	%dl, %dl	 # _44
	setne	%cl	 #, _45
	movl	%eax, %ebx	 # _40, _46
	andl	$7, %ebx	 #, _46
	addl	$3, %ebx	 #, _48
	cmpb	%dl, %bl	 # _44, _48
	setge	%dl	 #, _49
	andl	%ecx, %edx	 # _45, _50
	testb	%dl, %dl	 # _50
	je	L17	 #,
	movl	%eax, (%esp)	 # _40,
	call	___asan_report_load4	 #
L17:
	movl	8(%ebp), %eax	 # arr, tmp157
	movl	4(%eax), %eax	 # arr_4(D)->items, tmp158
	movl	%eax, -28(%ebp)	 # tmp158, items
	movl	12(%ebp), %eax	 # index, tmp159
	movl	%eax, -36(%ebp)	 # tmp159, i
	jmp	L18	 #
L21:
	movl	-36(%ebp), %eax	 # i, i.5_9
	leal	0(,%eax,4), %edx	 #, _10
	movl	-28(%ebp), %eax	 # items, tmp160
	leal	(%edx,%eax), %edi	 #, _11
	movl	-36(%ebp), %eax	 # i, i.6_12
	addl	$1, %eax	 #, _13
	leal	0(,%eax,4), %edx	 #, _14
	movl	-28(%ebp), %eax	 # items, tmp161
	leal	(%edx,%eax), %ebx	 #, _15
	movl	%ebx, %eax	 # _15, _51
	movl	%eax, %edx	 # _51, _52
	shrl	$3, %edx	 #, _52
	addl	$536870912, %edx	 #, _53
	movzbl	(%edx), %edx	 # *_54, _55
	testb	%dl, %dl	 # _55
	setne	-44(%ebp)	 #, %sfp
	movl	%eax, %esi	 # _51, _57
	andl	$7, %esi	 #, _57
	leal	3(%esi), %ecx	 #, _59
	cmpb	%dl, %cl	 # _55, _59
	setge	%dl	 #, _60
	andb	-44(%ebp), %dl	 # %sfp, _61
	testb	%dl, %dl	 # _61
	je	L19	 #,
	movl	%eax, (%esp)	 # _51,
	call	___asan_report_load4	 #
L19:
	movl	(%ebx), %eax	 # *_15, _16
	movl	%eax, -44(%ebp)	 # _16, %sfp
	movl	%edi, %eax	 # _11, _62
	movl	%eax, %edx	 # _62, _63
	shrl	$3, %edx	 #, _63
	addl	$536870912, %edx	 #, _64
	movzbl	(%edx), %edx	 # *_65, _66
	testb	%dl, %dl	 # _66
	setne	-45(%ebp)	 #, %sfp
	movzbl	-45(%ebp), %ecx	 # %sfp, _67
	movl	%eax, %esi	 # _62, _68
	andl	$7, %esi	 #, _68
	leal	3(%esi), %ebx	 #, _70
	cmpb	%dl, %bl	 # _66, _70
	setge	%dl	 #, _71
	andl	%ecx, %edx	 # _67, _72
	testb	%dl, %dl	 # _72
	je	L20	 #,
	movl	%eax, (%esp)	 # _62,
	call	___asan_report_store4	 #
L20:
	movl	-44(%ebp), %eax	 # %sfp, _16
	movl	%eax, (%edi)	 # _16, *_11
	addl	$1, -36(%ebp)	 #, i
L18:
	movl	-36(%ebp), %eax	 # i, tmp162
	cmpl	-32(%ebp), %eax	 # n_elements, tmp162
	jl	L21	 #,
	movl	-32(%ebp), %eax	 # n_elements, tmp163
	leal	-1(%eax), %edi	 #, _19
	movl	8(%ebp), %eax	 # arr, _23
	movl	%eax, %edx	 # _73, _74
	shrl	$3, %edx	 #, _74
	addl	$536870912, %edx	 #, _75
	movzbl	(%edx), %edx	 # *_76, _77
	testb	%dl, %dl	 # _77
	setne	%bl	 #, _78
	movl	%eax, %esi	 # _73, _79
	andl	$7, %esi	 #, _79
	leal	3(%esi), %ecx	 #, _81
	cmpb	%dl, %cl	 # _77, _81
	setge	%dl	 #, _82
	andl	%ebx, %edx	 # _78, _83
	testb	%dl, %dl	 # _83
	je	L22	 #,
	movl	%eax, (%esp)	 # _73,
	call	___asan_report_store4	 #
L22:
	movl	8(%ebp), %eax	 # arr, tmp164
	movl	%edi, (%eax)	 # _19, arr_4(D)->length
	nop
	addl	$60, %esp	 #,
	popl	%ebx	 #
	.cfi_restore 3
	popl	%esi	 #
	.cfi_restore 6
	popl	%edi	 #
	.cfi_restore 7
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_insert_element
	.def	_insert_element;	.scl	2;	.type	32;	.endef
_insert_element:
LASANPC17:
LFB17:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%edi	 #
	pushl	%esi	 #
	pushl	%ebx	 #
	subl	$76, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax	 # arr, _36
	movl	%eax, %edx	 # _47, _48
	shrl	$3, %edx	 #, _48
	addl	$536870912, %edx	 #, _49
	movzbl	(%edx), %edx	 # *_50, _51
	testb	%dl, %dl	 # _51
	setne	%cl	 #, _52
	movl	%eax, %ebx	 # _47, _53
	andl	$7, %ebx	 #, _53
	addl	$3, %ebx	 #, _55
	cmpb	%dl, %bl	 # _51, _55
	setge	%dl	 #, _56
	andl	%ecx, %edx	 # _52, _57
	testb	%dl, %dl	 # _57
	je	L24	 #,
	movl	%eax, (%esp)	 # _47,
	call	___asan_report_load4	 #
L24:
	movl	8(%ebp), %eax	 # arr, tmp184
	movl	(%eax), %eax	 # arr_5(D)->length, tmp185
	movl	%eax, -40(%ebp)	 # tmp185, n_elements
	movl	8(%ebp), %eax	 # arr, tmp186
	addl	$4, %eax	 #, _37
	movl	%eax, %edx	 # _58, _59
	shrl	$3, %edx	 #, _59
	addl	$536870912, %edx	 #, _60
	movzbl	(%edx), %edx	 # *_61, _62
	testb	%dl, %dl	 # _62
	setne	%cl	 #, _63
	movl	%eax, %ebx	 # _58, _64
	andl	$7, %ebx	 #, _64
	addl	$3, %ebx	 #, _66
	cmpb	%dl, %bl	 # _62, _66
	setge	%dl	 #, _67
	andl	%ecx, %edx	 # _63, _68
	testb	%dl, %dl	 # _68
	je	L25	 #,
	movl	%eax, (%esp)	 # _58,
	call	___asan_report_load4	 #
L25:
	movl	8(%ebp), %eax	 # arr, tmp187
	movl	4(%eax), %eax	 # arr_5(D)->items, tmp188
	movl	%eax, -36(%ebp)	 # tmp188, items
	movl	-40(%ebp), %eax	 # n_elements, tmp189
	addl	$1, %eax	 #, _8
	sall	$2, %eax	 #, _10
	movl	%eax, -32(%ebp)	 # _10, size_new
	movl	-32(%ebp), %eax	 # size_new, size_new.7_12
	movl	%eax, 4(%esp)	 # size_new.7_12,
	movl	-36(%ebp), %eax	 # items, tmp190
	movl	%eax, (%esp)	 # tmp190,
	call	_realloc	 #
	movl	%eax, -28(%ebp)	 # tmp191, new_items
	movl	-36(%ebp), %eax	 # items, tmp192
	cmpl	-28(%ebp), %eax	 # new_items, tmp192
	je	L26	 #,
	movl	-36(%ebp), %eax	 # items, tmp193
	movl	%eax, (%esp)	 # tmp193,
	call	_free	 #
L26:
	movl	-40(%ebp), %eax	 # n_elements, tmp194
	movl	%eax, -44(%ebp)	 # tmp194, i
	jmp	L27	 #
L30:
	movl	-44(%ebp), %eax	 # i, i.8_18
	leal	0(,%eax,4), %edx	 #, _19
	movl	-28(%ebp), %eax	 # new_items, tmp195
	leal	(%edx,%eax), %edi	 #, _20
	movl	-44(%ebp), %eax	 # i, i.9_21
	addl	$1073741823, %eax	 #, _22
	leal	0(,%eax,4), %edx	 #, _23
	movl	-36(%ebp), %eax	 # items, tmp196
	leal	(%edx,%eax), %ebx	 #, _24
	movl	%ebx, %eax	 # _24, _69
	movl	%eax, %edx	 # _69, _70
	shrl	$3, %edx	 #, _70
	addl	$536870912, %edx	 #, _71
	movzbl	(%edx), %edx	 # *_72, _73
	testb	%dl, %dl	 # _73
	setne	-60(%ebp)	 #, %sfp
	movl	%eax, %esi	 # _69, _75
	andl	$7, %esi	 #, _75
	leal	3(%esi), %ecx	 #, _77
	cmpb	%dl, %cl	 # _73, _77
	setge	%dl	 #, _78
	andb	-60(%ebp), %dl	 # %sfp, _79
	testb	%dl, %dl	 # _79
	je	L28	 #,
	movl	%eax, (%esp)	 # _69,
	call	___asan_report_load4	 #
L28:
	movl	(%ebx), %eax	 # *_24, _25
	movl	%eax, -60(%ebp)	 # _25, %sfp
	movl	%edi, %eax	 # _20, _80
	movl	%eax, %edx	 # _80, _81
	shrl	$3, %edx	 #, _81
	addl	$536870912, %edx	 #, _82
	movzbl	(%edx), %edx	 # *_83, _84
	testb	%dl, %dl	 # _84
	setne	-61(%ebp)	 #, %sfp
	movzbl	-61(%ebp), %ecx	 # %sfp, _85
	movl	%eax, %esi	 # _80, _86
	andl	$7, %esi	 #, _86
	leal	3(%esi), %ebx	 #, _88
	cmpb	%dl, %bl	 # _84, _88
	setge	%dl	 #, _89
	andl	%ecx, %edx	 # _85, _90
	testb	%dl, %dl	 # _90
	je	L29	 #,
	movl	%eax, (%esp)	 # _80,
	call	___asan_report_store4	 #
L29:
	movl	-60(%ebp), %eax	 # %sfp, _25
	movl	%eax, (%edi)	 # _25, *_20
	subl	$1, -44(%ebp)	 #, i
L27:
	movl	-44(%ebp), %eax	 # i, tmp197
	cmpl	12(%ebp), %eax	 # index, tmp197
	jg	L30	 #,
	movl	12(%ebp), %eax	 # index, index.10_28
	leal	0(,%eax,4), %edx	 #, _29
	movl	-28(%ebp), %eax	 # new_items, tmp198
	leal	(%edx,%eax), %ecx	 #, _30
	movl	%ecx, %eax	 # _30, _91
	movl	%eax, %edx	 # _91, _92
	shrl	$3, %edx	 #, _92
	addl	$536870912, %edx	 #, _93
	movzbl	(%edx), %edx	 # *_94, _95
	testb	%dl, %dl	 # _95
	setne	-60(%ebp)	 #, %sfp
	movl	%eax, %esi	 # _91, _97
	andl	$7, %esi	 #, _97
	leal	3(%esi), %ebx	 #, _99
	cmpb	%dl, %bl	 # _95, _99
	setge	%dl	 #, _100
	andb	-60(%ebp), %dl	 # %sfp, _101
	testb	%dl, %dl	 # _101
	je	L31	 #,
	movl	%eax, (%esp)	 # _91,
	call	___asan_report_store4	 #
L31:
	movl	16(%ebp), %eax	 # number, tmp199
	movl	%eax, (%ecx)	 # tmp199, *_30
	movl	-40(%ebp), %eax	 # n_elements, tmp200
	leal	1(%eax), %edi	 #, _33
	movl	8(%ebp), %eax	 # arr, _38
	movl	%eax, %edx	 # _102, _103
	shrl	$3, %edx	 #, _103
	addl	$536870912, %edx	 #, _104
	movzbl	(%edx), %edx	 # *_105, _106
	testb	%dl, %dl	 # _106
	setne	%bl	 #, _107
	movl	%eax, %esi	 # _102, _108
	andl	$7, %esi	 #, _108
	leal	3(%esi), %ecx	 #, _110
	cmpb	%dl, %cl	 # _106, _110
	setge	%dl	 #, _111
	andl	%ebx, %edx	 # _107, _112
	testb	%dl, %dl	 # _112
	je	L32	 #,
	movl	%eax, (%esp)	 # _102,
	call	___asan_report_store4	 #
L32:
	movl	8(%ebp), %eax	 # arr, tmp201
	movl	%edi, (%eax)	 # _33, arr_5(D)->length
	movl	8(%ebp), %eax	 # arr, tmp202
	addl	$4, %eax	 #, _39
	movl	%eax, %edx	 # _113, _114
	shrl	$3, %edx	 #, _114
	addl	$536870912, %edx	 #, _115
	movzbl	(%edx), %edx	 # *_116, _117
	testb	%dl, %dl	 # _117
	setne	%cl	 #, _118
	movl	%eax, %ebx	 # _113, _119
	andl	$7, %ebx	 #, _119
	addl	$3, %ebx	 #, _121
	cmpb	%dl, %bl	 # _117, _121
	setge	%dl	 #, _122
	andl	%ecx, %edx	 # _118, _123
	testb	%dl, %dl	 # _123
	je	L33	 #,
	movl	%eax, (%esp)	 # _113,
	call	___asan_report_store4	 #
L33:
	movl	8(%ebp), %eax	 # arr, tmp203
	movl	-28(%ebp), %edx	 # new_items, tmp204
	movl	%edx, 4(%eax)	 # tmp204, arr_5(D)->items
	nop
	addl	$76, %esp	 #,
	popl	%ebx	 #
	.cfi_restore 3
	popl	%esi	 #
	.cfi_restore 6
	popl	%edi	 #
	.cfi_restore 7
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.def	___asan_stack_malloc_1;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC2:
	.ascii "1 32 16 6 values \0"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LASANPC18:
LFB18:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%edi	 #
	pushl	%esi	 #
	pushl	%ebx	 #
	andl	$-16, %esp	 #,
	subl	$144, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	48(%esp), %esi	 #, tmp89
	movl	%esi, 28(%esp)	 # tmp89, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L34	 #,
	movl	$96, (%esp)	 #,
	call	___asan_stack_malloc_1	 #
	testl	%eax, %eax	 #
	je	L34	 #,
	movl	%eax, %esi	 #, tmp89
L34:
	leal	96(%esi), %eax	 #, tmp91
	movl	%eax, %edi	 # tmp91, tmp88
	movl	$1102416563, (%esi)	 #,
	movl	$LC2, 4(%esi)	 #,
	movl	$LASANPC18, 8(%esi)	 #,
	movl	%esi, %ebx	 # tmp89, tmp92
	shrl	$3, %ebx	 #, tmp92
	movl	$-235802127, 536870912(%ebx)	 #,
	movl	$-185335808, 536870916(%ebx)	 #,
	movl	$-202116109, 536870920(%ebx)	 #,
	call	___main	 #
	movl	$12, -64(%edi)	 #, values
	movl	$20, -60(%edi)	 #, values
	movl	$50, -56(%edi)	 #, values
	movl	$31, -52(%edi)	 #, values
	movl	$16, 4(%esp)	 #,
	leal	-64(%edi), %eax	 #, tmp94
	movl	%eax, (%esp)	 # tmp94,
	call	_create_array	 #
	movl	%eax, 44(%esp)	 # tmp95, my_array
	movl	44(%esp), %eax	 # my_array, tmp96
	movl	%eax, (%esp)	 # tmp96,
	call	_print_array	 #
	movl	$99, 8(%esp)	 #,
	movl	$3, 4(%esp)	 #,
	movl	44(%esp), %eax	 # my_array, tmp97
	movl	%eax, (%esp)	 # tmp97,
	call	_insert_element	 #
	movl	44(%esp), %eax	 # my_array, tmp98
	movl	%eax, (%esp)	 # tmp98,
	call	_print_array	 #
	movl	$3, 4(%esp)	 #,
	movl	44(%esp), %eax	 # my_array, tmp99
	movl	%eax, (%esp)	 # tmp99,
	call	_remove_element	 #
	movl	44(%esp), %eax	 # my_array, tmp100
	movl	%eax, (%esp)	 # tmp100,
	call	_print_array	 #
	movl	$0, %eax	 #, _13
	cmpl	%esi, 28(%esp)	 # tmp89, %sfp
	je	L35	 #,
	movl	$1172321806, (%esi)	 #,
	movl	$-168430091, 536870912(%ebx)	 #,
	movl	$-168430091, 536870916(%ebx)	 #,
	movl	$-168430091, 536870920(%ebx)	 #,
	jmp	L36	 #
L35:
	movl	$0, 536870912(%ebx)	 #,
	movl	$0, 536870916(%ebx)	 #,
	movl	$0, 536870920(%ebx)	 #,
L36:
	leal	-12(%ebp), %esp	 #,
	popl	%ebx	 #
	.cfi_restore 3
	popl	%esi	 #
	.cfi_restore 6
	popl	%edi	 #
	.cfi_restore 7
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
LC3:
	.ascii "*LC0\0"
LC4:
	.ascii "arrays.c\0"
LC5:
	.ascii "*LC1\0"
	.data
	.align 32
LASAN0:
 # __beg:
	.long	LC0
 # __size:
	.long	4
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC3
 # __module_name:
	.long	LC4
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC1
 # __size:
	.long	2
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC5
 # __module_name:
	.long	LC4
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
	.text
	.def	__GLOBAL__sub_D_00099_0_create_array;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_D_00099_0_create_array:
LFB19:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$24, %esp	 #,
	movl	$2, 4(%esp)	 #,
	movl	$LASAN0, (%esp)	 #,
	call	___asan_unregister_globals	 #
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.section	.dtors.65436,"w"
	.align 4
	.long	__GLOBAL__sub_D_00099_0_create_array
	.text
	.def	__GLOBAL__sub_I_00099_1_create_array;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I_00099_1_create_array:
LFB20:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$24, %esp	 #,
	call	___asan_init	 #
	call	___asan_version_mismatch_check_v6	 #
	movl	$2, 4(%esp)	 #,
	movl	$LASAN0, (%esp)	 #,
	call	___asan_register_globals	 #
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.section	.ctors.65436,"w"
	.align 4
	.long	__GLOBAL__sub_I_00099_1_create_array
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	___asan_report_store4;	.scl	2;	.type	32;	.endef
	.def	___asan_report_load4;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	___asan_unregister_globals;	.scl	2;	.type	32;	.endef
	.def	___asan_init;	.scl	2;	.type	32;	.endef
	.def	___asan_version_mismatch_check_v6;	.scl	2;	.type	32;	.endef
	.def	___asan_register_globals;	.scl	2;	.type	32;	.endef
