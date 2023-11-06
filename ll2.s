	.file	"ll2.c"
 # GNU C11 (MinGW.org GCC-6.3.0-1) version 6.3.0 (mingw32)
 #	compiled by GNU C version 6.3.0, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/6.3.0/ ll2.c
 # -march=x86-64 -Wall -Wextra -fsanitize=address -fverbose-asm
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

	.section .rdata,"dr"
	.align 32
LC0:
	.ascii "cant pop from empty array\0"
	.space 38
	.text
	.globl	_pop
	.def	_pop;	.scl	2;	.type	32;	.endef
_pop:
LASANPC17:
LFB17:
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
	movl	8(%ebp), %eax	 # list, _17
	movl	%eax, %edx	 # _34, _35
	shrl	$3, %edx	 #, _35
	addl	$536870912, %edx	 #, _36
	movzbl	(%edx), %edx	 # *_37, _38
	testb	%dl, %dl	 # _38
	setne	%cl	 #, _39
	movl	%eax, %ebx	 # _34, _40
	andl	$7, %ebx	 #, _40
	addl	$3, %ebx	 #, _42
	cmpb	%dl, %bl	 # _38, _42
	setge	%dl	 #, _43
	andl	%ecx, %edx	 # _39, _44
	testb	%dl, %dl	 # _44
	je	L2	 #,
	movl	%eax, (%esp)	 # _34,
	call	___asan_report_load4	 #
L2:
	movl	8(%ebp), %eax	 # list, tmp188
	movl	(%eax), %eax	 # list_4(D)->head, tmp189
	movl	%eax, -12(%ebp)	 # tmp189, item
	cmpl	$0, -12(%ebp)	 #, item
	jne	L3	 #,
	movl	$LC0, (%esp)	 #,
	call	_printf	 #
	jmp	L1	 #
L3:
	movl	-12(%ebp), %eax	 # item, tmp190
	addl	$4, %eax	 #, _18
	movl	%eax, %edx	 # _45, _46
	shrl	$3, %edx	 #, _46
	addl	$536870912, %edx	 #, _47
	movzbl	(%edx), %edx	 # *_48, _49
	testb	%dl, %dl	 # _49
	setne	%cl	 #, _50
	movl	%eax, %ebx	 # _45, _51
	andl	$7, %ebx	 #, _51
	addl	$3, %ebx	 #, _53
	cmpb	%dl, %bl	 # _49, _53
	setge	%dl	 #, _54
	andl	%ecx, %edx	 # _50, _55
	testb	%dl, %dl	 # _55
	je	L5	 #,
	movl	%eax, (%esp)	 # _45,
	call	___asan_report_load4	 #
L5:
	movl	-12(%ebp), %eax	 # item, tmp191
	movl	4(%eax), %eax	 # item_5->next, _7
	testl	%eax, %eax	 # _7
	jne	L9	 #,
	movl	8(%ebp), %eax	 # list, _19
	movl	%eax, %edx	 # _56, _57
	shrl	$3, %edx	 #, _57
	addl	$536870912, %edx	 #, _58
	movzbl	(%edx), %edx	 # *_59, _60
	testb	%dl, %dl	 # _60
	setne	%cl	 #, _61
	movl	%eax, %ebx	 # _56, _62
	andl	$7, %ebx	 #, _62
	addl	$3, %ebx	 #, _64
	cmpb	%dl, %bl	 # _60, _64
	setge	%dl	 #, _65
	andl	%ecx, %edx	 # _61, _66
	testb	%dl, %dl	 # _66
	je	L7	 #,
	movl	%eax, (%esp)	 # _56,
	call	___asan_report_load4	 #
L7:
	movl	8(%ebp), %eax	 # list, tmp192
	movl	(%eax), %eax	 # list_4(D)->head, _8
	movl	%eax, (%esp)	 # _8,
	call	_free	 #
	movl	8(%ebp), %eax	 # list, _20
	movl	%eax, %edx	 # _67, _68
	shrl	$3, %edx	 #, _68
	addl	$536870912, %edx	 #, _69
	movzbl	(%edx), %edx	 # *_70, _71
	testb	%dl, %dl	 # _71
	setne	%cl	 #, _72
	movl	%eax, %ebx	 # _67, _73
	andl	$7, %ebx	 #, _73
	addl	$3, %ebx	 #, _75
	cmpb	%dl, %bl	 # _71, _75
	setge	%dl	 #, _76
	andl	%ecx, %edx	 # _72, _77
	testb	%dl, %dl	 # _77
	je	L8	 #,
	movl	%eax, (%esp)	 # _67,
	call	___asan_report_store4	 #
L8:
	movl	8(%ebp), %eax	 # list, tmp193
	movl	$0, (%eax)	 #, list_4(D)->head
	jmp	L1	 #
L13:
	movl	-12(%ebp), %eax	 # item, tmp194
	addl	$4, %eax	 #, _21
	movl	%eax, %edx	 # _78, _79
	shrl	$3, %edx	 #, _79
	addl	$536870912, %edx	 #, _80
	movzbl	(%edx), %edx	 # *_81, _82
	testb	%dl, %dl	 # _82
	setne	%cl	 #, _83
	movl	%eax, %ebx	 # _78, _84
	andl	$7, %ebx	 #, _84
	addl	$3, %ebx	 #, _86
	cmpb	%dl, %bl	 # _82, _86
	setge	%dl	 #, _87
	andl	%ecx, %edx	 # _83, _88
	testb	%dl, %dl	 # _88
	je	L10	 #,
	movl	%eax, (%esp)	 # _78,
	call	___asan_report_load4	 #
L10:
	movl	-12(%ebp), %eax	 # item, tmp195
	movl	4(%eax), %eax	 # item_1->next, tmp196
	movl	%eax, -12(%ebp)	 # tmp196, item
L9:
	movl	-12(%ebp), %eax	 # item, tmp197
	addl	$4, %eax	 #, _22
	movl	%eax, %edx	 # _89, _90
	shrl	$3, %edx	 #, _90
	addl	$536870912, %edx	 #, _91
	movzbl	(%edx), %edx	 # *_92, _93
	testb	%dl, %dl	 # _93
	setne	%cl	 #, _94
	movl	%eax, %ebx	 # _89, _95
	andl	$7, %ebx	 #, _95
	addl	$3, %ebx	 #, _97
	cmpb	%dl, %bl	 # _93, _97
	setge	%dl	 #, _98
	andl	%ecx, %edx	 # _94, _99
	testb	%dl, %dl	 # _99
	je	L11	 #,
	movl	%eax, (%esp)	 # _89,
	call	___asan_report_load4	 #
L11:
	movl	-12(%ebp), %eax	 # item, tmp198
	movl	4(%eax), %edx	 # item_1->next, _11
	leal	4(%edx), %eax	 #, _23
	movl	%eax, %ecx	 # _100, _101
	shrl	$3, %ecx	 #, _101
	addl	$536870912, %ecx	 #, _102
	movzbl	(%ecx), %ecx	 # *_103, _104
	testb	%cl, %cl	 # _104
	setne	-25(%ebp)	 #, %sfp
	movl	%eax, %esi	 # _100, _106
	andl	$7, %esi	 #, _106
	leal	3(%esi), %ebx	 #, _108
	cmpb	%cl, %bl	 # _104, _108
	setge	%cl	 #, _109
	andb	-25(%ebp), %cl	 # %sfp, _110
	testb	%cl, %cl	 # _110
	je	L12	 #,
	movl	%eax, (%esp)	 # _100,
	call	___asan_report_load4	 #
L12:
	movl	4(%edx), %eax	 # _11->next, _12
	testl	%eax, %eax	 # _12
	jne	L13	 #,
	movl	-12(%ebp), %eax	 # item, tmp199
	movl	4(%eax), %eax	 # item_1->next, _14
	movl	%eax, (%esp)	 # _14,
	call	_free	 #
	movl	-12(%ebp), %eax	 # item, tmp200
	addl	$4, %eax	 #, _24
	movl	%eax, %edx	 # _111, _112
	shrl	$3, %edx	 #, _112
	addl	$536870912, %edx	 #, _113
	movzbl	(%edx), %edx	 # *_114, _115
	testb	%dl, %dl	 # _115
	setne	%cl	 #, _116
	movl	%eax, %ebx	 # _111, _117
	andl	$7, %ebx	 #, _117
	addl	$3, %ebx	 #, _119
	cmpb	%dl, %bl	 # _115, _119
	setge	%dl	 #, _120
	andl	%ecx, %edx	 # _116, _121
	testb	%dl, %dl	 # _121
	je	L14	 #,
	movl	%eax, (%esp)	 # _111,
	call	___asan_report_store4	 #
L14:
	movl	-12(%ebp), %eax	 # item, tmp201
	movl	$0, 4(%eax)	 #, item_1->next
L1:
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
LFE17:
	.globl	_push
	.def	_push;	.scl	2;	.type	32;	.endef
_push:
LASANPC18:
LFB18:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%ebx	 #
	subl	$36, %esp	 #,
	.cfi_offset 3, -12
	movl	$8, (%esp)	 #,
	call	_malloc	 #
	movl	%eax, -12(%ebp)	 # tmp148, new_item
	movl	-12(%ebp), %eax	 # new_item, _15
	movl	%eax, %edx	 # _26, _27
	shrl	$3, %edx	 #, _27
	addl	$536870912, %edx	 #, _28
	movzbl	(%edx), %edx	 # *_29, _30
	testb	%dl, %dl	 # _30
	setne	%cl	 #, _31
	movl	%eax, %ebx	 # _26, _32
	andl	$7, %ebx	 #, _32
	addl	$3, %ebx	 #, _34
	cmpb	%dl, %bl	 # _30, _34
	setge	%dl	 #, _35
	andl	%ecx, %edx	 # _31, _36
	testb	%dl, %dl	 # _36
	je	L16	 #,
	movl	%eax, (%esp)	 # _26,
	call	___asan_report_store4	 #
L16:
	movl	-12(%ebp), %eax	 # new_item, tmp149
	movl	12(%ebp), %edx	 # value, tmp150
	movl	%edx, (%eax)	 # tmp150, new_item_5->value
	movl	-12(%ebp), %eax	 # new_item, tmp151
	addl	$4, %eax	 #, _16
	movl	%eax, %edx	 # _37, _38
	shrl	$3, %edx	 #, _38
	addl	$536870912, %edx	 #, _39
	movzbl	(%edx), %edx	 # *_40, _41
	testb	%dl, %dl	 # _41
	setne	%cl	 #, _42
	movl	%eax, %ebx	 # _37, _43
	andl	$7, %ebx	 #, _43
	addl	$3, %ebx	 #, _45
	cmpb	%dl, %bl	 # _41, _45
	setge	%dl	 #, _46
	andl	%ecx, %edx	 # _42, _47
	testb	%dl, %dl	 # _47
	je	L17	 #,
	movl	%eax, (%esp)	 # _37,
	call	___asan_report_store4	 #
L17:
	movl	-12(%ebp), %eax	 # new_item, tmp152
	movl	$0, 4(%eax)	 #, new_item_5->next
	movl	8(%ebp), %eax	 # list, _17
	movl	%eax, %edx	 # _48, _49
	shrl	$3, %edx	 #, _49
	addl	$536870912, %edx	 #, _50
	movzbl	(%edx), %edx	 # *_51, _52
	testb	%dl, %dl	 # _52
	setne	%cl	 #, _53
	movl	%eax, %ebx	 # _48, _54
	andl	$7, %ebx	 #, _54
	addl	$3, %ebx	 #, _56
	cmpb	%dl, %bl	 # _52, _56
	setge	%dl	 #, _57
	andl	%ecx, %edx	 # _53, _58
	testb	%dl, %dl	 # _58
	je	L18	 #,
	movl	%eax, (%esp)	 # _48,
	call	___asan_report_load4	 #
L18:
	movl	8(%ebp), %eax	 # list, tmp153
	movl	(%eax), %eax	 # list_9(D)->head, tmp154
	movl	%eax, -16(%ebp)	 # tmp154, item
	cmpl	$0, -16(%ebp)	 #, item
	jne	L21	 #,
	movl	8(%ebp), %eax	 # list, tmp155
	movl	-12(%ebp), %edx	 # new_item, tmp156
	movl	%edx, (%eax)	 # tmp156, list_9(D)->head
	jmp	L15	 #
L24:
	movl	-16(%ebp), %eax	 # item, tmp157
	addl	$4, %eax	 #, _18
	movl	%eax, %edx	 # _59, _60
	shrl	$3, %edx	 #, _60
	addl	$536870912, %edx	 #, _61
	movzbl	(%edx), %edx	 # *_62, _63
	testb	%dl, %dl	 # _63
	setne	%cl	 #, _64
	movl	%eax, %ebx	 # _59, _65
	andl	$7, %ebx	 #, _65
	addl	$3, %ebx	 #, _67
	cmpb	%dl, %bl	 # _63, _67
	setge	%dl	 #, _68
	andl	%ecx, %edx	 # _64, _69
	testb	%dl, %dl	 # _69
	je	L22	 #,
	movl	%eax, (%esp)	 # _59,
	call	___asan_report_load4	 #
L22:
	movl	-16(%ebp), %eax	 # item, tmp158
	movl	4(%eax), %eax	 # item_1->next, tmp159
	movl	%eax, -16(%ebp)	 # tmp159, item
L21:
	movl	-16(%ebp), %eax	 # item, tmp160
	addl	$4, %eax	 #, _19
	movl	%eax, %edx	 # _70, _71
	shrl	$3, %edx	 #, _71
	addl	$536870912, %edx	 #, _72
	movzbl	(%edx), %edx	 # *_73, _74
	testb	%dl, %dl	 # _74
	setne	%cl	 #, _75
	movl	%eax, %ebx	 # _70, _76
	andl	$7, %ebx	 #, _76
	addl	$3, %ebx	 #, _78
	cmpb	%dl, %bl	 # _74, _78
	setge	%dl	 #, _79
	andl	%ecx, %edx	 # _75, _80
	testb	%dl, %dl	 # _80
	je	L23	 #,
	movl	%eax, (%esp)	 # _70,
	call	___asan_report_load4	 #
L23:
	movl	-16(%ebp), %eax	 # item, tmp161
	movl	4(%eax), %eax	 # item_1->next, _12
	testl	%eax, %eax	 # _12
	jne	L24	 #,
	movl	-16(%ebp), %eax	 # item, tmp162
	movl	-12(%ebp), %edx	 # new_item, tmp163
	movl	%edx, 4(%eax)	 # tmp163, item_1->next
L15:
	addl	$36, %esp	 #,
	popl	%ebx	 #
	.cfi_restore 3
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.def	___asan_stack_malloc_1;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "1 32 4 4 list \0"
	.text
	.globl	_create_with_pushes
	.def	_create_with_pushes;	.scl	2;	.type	32;	.endef
_create_with_pushes:
LASANPC19:
LFB19:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%edi	 #
	pushl	%esi	 #
	pushl	%ebx	 #
	subl	$156, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-120(%ebp), %esi	 #, tmp106
	movl	%esi, -148(%ebp)	 # tmp106, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L25	 #,
	movl	$96, (%esp)	 #,
	call	___asan_stack_malloc_1	 #
	testl	%eax, %eax	 #
	je	L25	 #,
	movl	%eax, %esi	 #, tmp106
L25:
	leal	96(%esi), %eax	 #, tmp108
	movl	%eax, %edi	 # tmp108, tmp105
	movl	$1102416563, (%esi)	 #,
	movl	$LC1, 4(%esi)	 #,
	movl	$LASANPC19, 8(%esi)	 #,
	movl	%esi, %ebx	 # tmp106, tmp109
	shrl	$3, %ebx	 #, tmp109
	movl	$-235802127, 536870912(%ebx)	 #,
	movl	$-185273340, 536870916(%ebx)	 #,
	movl	$-202116109, 536870920(%ebx)	 #,
	movl	12(%ebp), %eax	 # size, size.0_4
	shrl	$2, %eax	 #, _5
	movl	%eax, -124(%ebp)	 # _5, n_elements
	movl	$0, -64(%edi)	 #, list.head
	movl	$0, -128(%ebp)	 #, i
	jmp	L29	 #
L31:
	movl	-128(%ebp), %eax	 # i, i.1_10
	leal	0(,%eax,4), %edx	 #, _11
	movl	8(%ebp), %eax	 # values, tmp111
	addl	%edx, %eax	 # _11, _13
	movl	%eax, -140(%ebp)	 # _13, %sfp
	movl	%eax, %ecx	 # _13, _20
	movl	%ecx, %eax	 # _20, _21
	shrl	$3, %eax	 #, _21
	addl	$536870912, %eax	 #, _22
	movzbl	(%eax), %edx	 # *_23, _24
	testb	%dl, %dl	 # _24
	setne	-141(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _20, _26
	andl	$7, %eax	 #, _26
	addl	$3, %eax	 #, _28
	cmpb	%dl, %al	 # _24, _28
	setge	%al	 #, _29
	andb	-141(%ebp), %al	 # %sfp, _30
	testb	%al, %al	 # _30
	je	L30	 #,
	movl	%ecx, (%esp)	 # _20,
	call	___asan_report_load4	 #
L30:
	movl	-140(%ebp), %eax	 # %sfp, _13
	movl	(%eax), %eax	 # *_13, _14
	movl	%eax, 4(%esp)	 # _14,
	leal	-64(%edi), %eax	 #, tmp112
	movl	%eax, (%esp)	 # tmp112,
	call	_push	 #
	addl	$1, -128(%ebp)	 #, i
L29:
	movl	-128(%ebp), %eax	 # i, tmp113
	cmpl	-124(%ebp), %eax	 # n_elements, tmp113
	jl	L31	 #,
	movl	-64(%edi), %eax	 # list, D.3315
	cmpl	%esi, -148(%ebp)	 # tmp106, %sfp
	je	L26	 #,
	movl	$1172321806, (%esi)	 #,
	movl	$-168430091, 536870912(%ebx)	 #,
	movl	$-168430091, 536870916(%ebx)	 #,
	movl	$-168430091, 536870920(%ebx)	 #,
	jmp	L27	 #
L26:
	movl	$0, 536870912(%ebx)	 #,
	movl	$0, 536870916(%ebx)	 #,
	movl	$0, 536870920(%ebx)	 #,
L27:
	addl	$156, %esp	 #,
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
LFE19:
	.globl	_add_items_forward
	.def	_add_items_forward;	.scl	2;	.type	32;	.endef
_add_items_forward:
LASANPC20:
LFB20:
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
	movl	16(%ebp), %eax	 # idx, tmp129
	cmpl	12(%ebp), %eax	 # n_elements, tmp129
	jne	L34	 #,
	movl	$0, %eax	 #, _1
	jmp	L35	 #
L34:
	movl	$8, (%esp)	 #,
	call	_malloc	 #
	movl	%eax, -32(%ebp)	 # tmp130, item
	movl	16(%ebp), %eax	 # idx, tmp131
	addl	$1, %eax	 #, _9
	movl	%eax, 8(%esp)	 # _9,
	movl	12(%ebp), %eax	 # n_elements, tmp132
	movl	%eax, 4(%esp)	 # tmp132,
	movl	8(%ebp), %eax	 # values, tmp133
	movl	%eax, (%esp)	 # tmp133,
	call	_add_items_forward	 #
	movl	%eax, -28(%ebp)	 # tmp134, new_item
	movl	16(%ebp), %eax	 # idx, idx.2_13
	leal	0(,%eax,4), %edx	 #, _14
	movl	8(%ebp), %eax	 # values, tmp135
	leal	(%edx,%eax), %ecx	 #, _15
	movl	%ecx, %eax	 # _15, _25
	movl	%eax, %edx	 # _25, _26
	shrl	$3, %edx	 #, _26
	addl	$536870912, %edx	 #, _27
	movzbl	(%edx), %edx	 # *_28, _29
	testb	%dl, %dl	 # _29
	setne	-41(%ebp)	 #, %sfp
	movl	%eax, %esi	 # _25, _31
	andl	$7, %esi	 #, _31
	leal	3(%esi), %ebx	 #, _33
	cmpb	%dl, %bl	 # _29, _33
	setge	%dl	 #, _34
	andb	-41(%ebp), %dl	 # %sfp, _35
	testb	%dl, %dl	 # _35
	je	L36	 #,
	movl	%eax, (%esp)	 # _25,
	call	___asan_report_load4	 #
L36:
	movl	(%ecx), %edi	 # *_15, _16
	movl	-32(%ebp), %eax	 # item, _20
	movl	%eax, %edx	 # _36, _37
	shrl	$3, %edx	 #, _37
	addl	$536870912, %edx	 #, _38
	movzbl	(%edx), %edx	 # *_39, _40
	testb	%dl, %dl	 # _40
	setne	%bl	 #, _41
	movl	%eax, %esi	 # _36, _42
	andl	$7, %esi	 #, _42
	leal	3(%esi), %ecx	 #, _44
	cmpb	%dl, %cl	 # _40, _44
	setge	%dl	 #, _45
	andl	%ebx, %edx	 # _41, _46
	testb	%dl, %dl	 # _46
	je	L37	 #,
	movl	%eax, (%esp)	 # _36,
	call	___asan_report_store4	 #
L37:
	movl	-32(%ebp), %eax	 # item, tmp136
	movl	%edi, (%eax)	 # _16, item_8->value
	movl	-32(%ebp), %eax	 # item, tmp137
	addl	$4, %eax	 #, _21
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
	je	L38	 #,
	movl	%eax, (%esp)	 # _47,
	call	___asan_report_store4	 #
L38:
	movl	-32(%ebp), %eax	 # item, tmp138
	movl	-28(%ebp), %edx	 # new_item, tmp139
	movl	%edx, 4(%eax)	 # tmp139, item_8->next
	movl	-32(%ebp), %eax	 # item, _1
L35:
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
LFE20:
	.section .rdata,"dr"
	.align 32
LC2:
	.ascii "VALUE: %d\12\0"
	.space 53
	.text
	.globl	_create_forward
	.def	_create_forward;	.scl	2;	.type	32;	.endef
_create_forward:
LASANPC21:
LFB21:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%edi	 #
	pushl	%esi	 #
	pushl	%ebx	 #
	subl	$156, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-120(%ebp), %esi	 #, tmp104
	movl	%esi, -144(%ebp)	 # tmp104, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L39	 #,
	movl	$96, (%esp)	 #,
	call	___asan_stack_malloc_1	 #
	testl	%eax, %eax	 #
	je	L39	 #,
	movl	%eax, %esi	 #, tmp104
L39:
	leal	96(%esi), %eax	 #, tmp106
	movl	%eax, %edi	 # tmp106, tmp103
	movl	$1102416563, (%esi)	 #,
	movl	$LC1, 4(%esi)	 #,
	movl	$LASANPC21, 8(%esi)	 #,
	movl	%esi, %ebx	 # tmp104, tmp107
	shrl	$3, %ebx	 #, tmp107
	movl	$-235802127, 536870912(%ebx)	 #,
	movl	$-185273340, 536870916(%ebx)	 #,
	movl	$-202116109, 536870920(%ebx)	 #,
	movl	12(%ebp), %eax	 # size, size.3_2
	shrl	$2, %eax	 #, _3
	movl	%eax, -128(%ebp)	 # _3, n_elements
	movl	$0, 8(%esp)	 #,
	movl	-128(%ebp), %eax	 # n_elements, tmp109
	movl	%eax, 4(%esp)	 # tmp109,
	movl	8(%ebp), %eax	 # values, tmp110
	movl	%eax, (%esp)	 # tmp110,
	call	_add_items_forward	 #
	movl	%eax, -124(%ebp)	 # tmp111, boop
	movl	-124(%ebp), %eax	 # boop, _14
	movl	%eax, %edx	 # _14, _16
	movl	%edx, %eax	 # _16, _17
	shrl	$3, %eax	 #, _17
	addl	$536870912, %eax	 #, _18
	movzbl	(%eax), %ecx	 # *_19, _20
	testb	%cl, %cl	 # _20
	setne	-137(%ebp)	 #, %sfp
	movl	%edx, %eax	 # _16, _22
	andl	$7, %eax	 #, _22
	addl	$3, %eax	 #, _24
	cmpb	%cl, %al	 # _20, _24
	setge	%al	 #, _25
	andb	-137(%ebp), %al	 # %sfp, _26
	testb	%al, %al	 # _26
	je	L43	 #,
	movl	%edx, (%esp)	 # _16,
	call	___asan_report_load4	 #
L43:
	movl	-124(%ebp), %eax	 # boop, tmp112
	movl	(%eax), %eax	 # boop_8->value, _9
	movl	%eax, 4(%esp)	 # _9,
	movl	$LC2, (%esp)	 #,
	call	_printf	 #
	movl	-124(%ebp), %eax	 # boop, tmp113
	movl	%eax, -64(%edi)	 # tmp113, list.head
	movl	-64(%edi), %eax	 # list, D.3330
	cmpl	%esi, -144(%ebp)	 # tmp104, %sfp
	je	L40	 #,
	movl	$1172321806, (%esi)	 #,
	movl	$-168430091, 536870912(%ebx)	 #,
	movl	$-168430091, 536870916(%ebx)	 #,
	movl	$-168430091, 536870920(%ebx)	 #,
	jmp	L41	 #
L40:
	movl	$0, 536870912(%ebx)	 #,
	movl	$0, 536870916(%ebx)	 #,
	movl	$0, 536870920(%ebx)	 #,
L41:
	addl	$156, %esp	 #,
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
LFE21:
	.globl	_create_contiguous
	.def	_create_contiguous;	.scl	2;	.type	32;	.endef
_create_contiguous:
LASANPC22:
LFB22:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%edi	 #
	pushl	%esi	 #
	pushl	%ebx	 #
	subl	$172, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-120(%ebp), %esi	 #, tmp156
	movl	%esi, -168(%ebp)	 # tmp156, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L45	 #,
	movl	$96, (%esp)	 #,
	call	___asan_stack_malloc_1	 #
	testl	%eax, %eax	 #
	je	L45	 #,
	movl	%eax, %esi	 #, tmp156
L45:
	leal	96(%esi), %eax	 #, tmp158
	movl	%eax, -164(%ebp)	 # tmp158, %sfp
	movl	$1102416563, (%esi)	 #,
	movl	$LC1, 4(%esi)	 #,
	movl	$LASANPC22, 8(%esi)	 #,
	movl	%esi, %ebx	 # tmp156, tmp159
	shrl	$3, %ebx	 #, tmp159
	movl	$-235802127, 536870912(%ebx)	 #,
	movl	$-185273340, 536870916(%ebx)	 #,
	movl	$-202116109, 536870920(%ebx)	 #,
	movl	$4, -136(%ebp)	 #, element_size
	movl	12(%ebp), %eax	 # size, tmp164
	cltd
	idivl	-136(%ebp)	 # element_size
	movl	%eax, -132(%ebp)	 # tmp162, n_elements
	movl	$8, -128(%ebp)	 #, item_size
	movl	-132(%ebp), %eax	 # n_elements, tmp165
	imull	-128(%ebp), %eax	 # item_size, _7
	movl	%eax, (%esp)	 # _8,
	call	_malloc	 #
	movl	%eax, -124(%ebp)	 # tmp166, items
	movl	$0, -140(%ebp)	 #, i
	jmp	L49	 #
L53:
	movl	-140(%ebp), %eax	 # i, i.4_13
	leal	0(,%eax,8), %edx	 #, _14
	movl	-124(%ebp), %eax	 # items, tmp167
	leal	(%edx,%eax), %edi	 #, _15
	movl	-140(%ebp), %eax	 # i, i.5_16
	addl	$1, %eax	 #, _17
	leal	0(,%eax,8), %edx	 #, _18
	movl	-124(%ebp), %eax	 # items, tmp168
	addl	%edx, %eax	 # _18, _19
	movl	%eax, -156(%ebp)	 # _19, %sfp
	leal	4(%edi), %eax	 #, _39
	movl	%eax, %ecx	 # _39, _46
	movl	%ecx, %eax	 # _46, _47
	shrl	$3, %eax	 #, _47
	addl	$536870912, %eax	 #, _48
	movzbl	(%eax), %edx	 # *_49, _50
	testb	%dl, %dl	 # _50
	setne	-157(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _46, _52
	andl	$7, %eax	 #, _52
	addl	$3, %eax	 #, _54
	cmpb	%dl, %al	 # _50, _54
	setge	%al	 #, _55
	andb	-157(%ebp), %al	 # %sfp, _56
	testb	%al, %al	 # _56
	je	L50	 #,
	movl	%ecx, (%esp)	 # _46,
	call	___asan_report_store4	 #
L50:
	movl	-156(%ebp), %eax	 # %sfp, _19
	movl	%eax, 4(%edi)	 # _19, _15->next
	movl	-140(%ebp), %eax	 # i, i.6_21
	leal	0(,%eax,8), %edx	 #, _22
	movl	-124(%ebp), %eax	 # items, tmp169
	addl	%edx, %eax	 # _22, _23
	movl	%eax, -156(%ebp)	 # _23, %sfp
	movl	-140(%ebp), %eax	 # i, i.7_24
	leal	0(,%eax,4), %edx	 #, _25
	movl	8(%ebp), %eax	 # values, tmp170
	leal	(%edx,%eax), %edi	 #, _27
	movl	%edi, %ecx	 # _27, _57
	movl	%ecx, %eax	 # _57, _58
	shrl	$3, %eax	 #, _58
	addl	$536870912, %eax	 #, _59
	movzbl	(%eax), %edx	 # *_60, _61
	testb	%dl, %dl	 # _61
	setne	-157(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _57, _63
	andl	$7, %eax	 #, _63
	addl	$3, %eax	 #, _65
	cmpb	%dl, %al	 # _61, _65
	setge	%al	 #, _66
	andb	-157(%ebp), %al	 # %sfp, _67
	testb	%al, %al	 # _67
	je	L51	 #,
	movl	%ecx, (%esp)	 # _57,
	call	___asan_report_load4	 #
L51:
	movl	(%edi), %edi	 # *_27, _28
	movl	-156(%ebp), %eax	 # %sfp, _40
	movl	%eax, %ecx	 # _40, _68
	movl	%ecx, %eax	 # _68, _69
	shrl	$3, %eax	 #, _69
	addl	$536870912, %eax	 #, _70
	movzbl	(%eax), %edx	 # *_71, _72
	testb	%dl, %dl	 # _72
	setne	-157(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _68, _74
	andl	$7, %eax	 #, _74
	addl	$3, %eax	 #, _76
	cmpb	%dl, %al	 # _72, _76
	setge	%al	 #, _77
	andb	-157(%ebp), %al	 # %sfp, _78
	testb	%al, %al	 # _78
	je	L52	 #,
	movl	%ecx, (%esp)	 # _68,
	call	___asan_report_store4	 #
L52:
	movl	-156(%ebp), %eax	 # %sfp, _23
	movl	%edi, (%eax)	 # _28, _23->value
	addl	$1, -140(%ebp)	 #, i
L49:
	movl	-140(%ebp), %eax	 # i, tmp171
	cmpl	-132(%ebp), %eax	 # n_elements, tmp171
	jl	L53	 #,
	movl	-132(%ebp), %eax	 # n_elements, n_elements.8_31
	addl	$536870911, %eax	 #, _32
	leal	0(,%eax,8), %edx	 #, _33
	movl	-124(%ebp), %eax	 # items, tmp172
	leal	(%edx,%eax), %edi	 #, _34
	leal	4(%edi), %eax	 #, _41
	movl	%eax, %ecx	 # _41, _79
	movl	%ecx, %eax	 # _79, _80
	shrl	$3, %eax	 #, _80
	addl	$536870912, %eax	 #, _81
	movzbl	(%eax), %edx	 # *_82, _83
	testb	%dl, %dl	 # _83
	setne	-156(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _79, _85
	andl	$7, %eax	 #, _85
	addl	$3, %eax	 #, _87
	cmpb	%dl, %al	 # _83, _87
	setge	%al	 #, _88
	andb	-156(%ebp), %al	 # %sfp, _89
	testb	%al, %al	 # _89
	je	L54	 #,
	movl	%ecx, (%esp)	 # _79,
	call	___asan_report_store4	 #
L54:
	movl	$0, 4(%edi)	 #, _34->next
	movl	-124(%ebp), %eax	 # items, tmp173
	movl	-164(%ebp), %edi	 # %sfp, tmp155
	movl	%eax, -64(%edi)	 # tmp173, list.head
	movl	-64(%edi), %eax	 # list, D.3353
	cmpl	%esi, -168(%ebp)	 # tmp156, %sfp
	je	L46	 #,
	movl	$1172321806, (%esi)	 #,
	movl	$-168430091, 536870912(%ebx)	 #,
	movl	$-168430091, 536870916(%ebx)	 #,
	movl	$-168430091, 536870920(%ebx)	 #,
	jmp	L47	 #
L46:
	movl	$0, 536870912(%ebx)	 #,
	movl	$0, 536870916(%ebx)	 #,
	movl	$0, 536870920(%ebx)	 #,
L47:
	addl	$172, %esp	 #,
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
LFE22:
	.section .rdata,"dr"
	.align 32
LC3:
	.ascii "[]\0"
	.space 61
	.align 32
LC4:
	.ascii "%d,\0"
	.space 60
	.align 32
LC5:
	.ascii "%d]\12\0"
	.space 59
	.text
	.globl	_print_list
	.def	_print_list;	.scl	2;	.type	32;	.endef
_print_list:
LASANPC23:
LFB23:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%ebx	 #
	subl	$36, %esp	 #,
	.cfi_offset 3, -12
	leal	8(%ebp), %eax	 #, _14
	movl	%eax, %edx	 # _24, _25
	shrl	$3, %edx	 #, _25
	addl	$536870912, %edx	 #, _26
	movzbl	(%edx), %edx	 # *_27, _28
	testb	%dl, %dl	 # _28
	setne	%cl	 #, _29
	movl	%eax, %ebx	 # _24, _30
	andl	$7, %ebx	 #, _30
	addl	$3, %ebx	 #, _32
	cmpb	%dl, %bl	 # _28, _32
	setge	%dl	 #, _33
	andl	%ecx, %edx	 # _29, _34
	testb	%dl, %dl	 # _34
	je	L57	 #,
	movl	%eax, (%esp)	 # _24,
	call	___asan_report_load4	 #
L57:
	movl	8(%ebp), %eax	 # list.head, tmp150
	movl	%eax, -12(%ebp)	 # tmp150, item
	cmpl	$0, -12(%ebp)	 #, item
	jne	L58	 #,
	movl	$LC3, (%esp)	 #,
	call	_puts	 #
	jmp	L56	 #
L58:
	movl	$91, (%esp)	 #,
	call	_putchar	 #
	jmp	L60	 #
L64:
	movl	-12(%ebp), %eax	 # item, _15
	movl	%eax, %edx	 # _35, _36
	shrl	$3, %edx	 #, _36
	addl	$536870912, %edx	 #, _37
	movzbl	(%edx), %edx	 # *_38, _39
	testb	%dl, %dl	 # _39
	setne	%cl	 #, _40
	movl	%eax, %ebx	 # _35, _41
	andl	$7, %ebx	 #, _41
	addl	$3, %ebx	 #, _43
	cmpb	%dl, %bl	 # _39, _43
	setge	%dl	 #, _44
	andl	%ecx, %edx	 # _40, _45
	testb	%dl, %dl	 # _45
	je	L61	 #,
	movl	%eax, (%esp)	 # _35,
	call	___asan_report_load4	 #
L61:
	movl	-12(%ebp), %eax	 # item, tmp151
	movl	(%eax), %eax	 # item_1->value, _9
	movl	%eax, 4(%esp)	 # _9,
	movl	$LC4, (%esp)	 #,
	call	_printf	 #
	movl	-12(%ebp), %eax	 # item, tmp152
	addl	$4, %eax	 #, _16
	movl	%eax, %edx	 # _46, _47
	shrl	$3, %edx	 #, _47
	addl	$536870912, %edx	 #, _48
	movzbl	(%edx), %edx	 # *_49, _50
	testb	%dl, %dl	 # _50
	setne	%cl	 #, _51
	movl	%eax, %ebx	 # _46, _52
	andl	$7, %ebx	 #, _52
	addl	$3, %ebx	 #, _54
	cmpb	%dl, %bl	 # _50, _54
	setge	%dl	 #, _55
	andl	%ecx, %edx	 # _51, _56
	testb	%dl, %dl	 # _56
	je	L62	 #,
	movl	%eax, (%esp)	 # _46,
	call	___asan_report_load4	 #
L62:
	movl	-12(%ebp), %eax	 # item, tmp153
	movl	4(%eax), %eax	 # item_1->next, tmp154
	movl	%eax, -12(%ebp)	 # tmp154, item
L60:
	movl	-12(%ebp), %eax	 # item, tmp155
	addl	$4, %eax	 #, _17
	movl	%eax, %edx	 # _57, _58
	shrl	$3, %edx	 #, _58
	addl	$536870912, %edx	 #, _59
	movzbl	(%edx), %edx	 # *_60, _61
	testb	%dl, %dl	 # _61
	setne	%cl	 #, _62
	movl	%eax, %ebx	 # _57, _63
	andl	$7, %ebx	 #, _63
	addl	$3, %ebx	 #, _65
	cmpb	%dl, %bl	 # _61, _65
	setge	%dl	 #, _66
	andl	%ecx, %edx	 # _62, _67
	testb	%dl, %dl	 # _67
	je	L63	 #,
	movl	%eax, (%esp)	 # _57,
	call	___asan_report_load4	 #
L63:
	movl	-12(%ebp), %eax	 # item, tmp156
	movl	4(%eax), %eax	 # item_1->next, _8
	testl	%eax, %eax	 # _8
	jne	L64	 #,
	movl	-12(%ebp), %eax	 # item, _18
	movl	%eax, %edx	 # _68, _69
	shrl	$3, %edx	 #, _69
	addl	$536870912, %edx	 #, _70
	movzbl	(%edx), %edx	 # *_71, _72
	testb	%dl, %dl	 # _72
	setne	%cl	 #, _73
	movl	%eax, %ebx	 # _68, _74
	andl	$7, %ebx	 #, _74
	addl	$3, %ebx	 #, _76
	cmpb	%dl, %bl	 # _72, _76
	setge	%dl	 #, _77
	andl	%ecx, %edx	 # _73, _78
	testb	%dl, %dl	 # _78
	je	L65	 #,
	movl	%eax, (%esp)	 # _68,
	call	___asan_report_load4	 #
L65:
	movl	-12(%ebp), %eax	 # item, tmp157
	movl	(%eax), %eax	 # item_1->value, _12
	movl	%eax, 4(%esp)	 # _12,
	movl	$LC5, (%esp)	 #,
	call	_printf	 #
L56:
	addl	$36, %esp	 #,
	popl	%ebx	 #
	.cfi_restore 3
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.section .rdata,"dr"
	.align 32
LC6:
	.ascii "Address: %d\12\0"
	.space 51
	.align 32
LC7:
	.ascii "Value: %d\12\0"
	.space 53
	.align 32
LC8:
	.ascii "Next: %d\12\0"
	.space 54
	.text
	.globl	_show_list_addressing
	.def	_show_list_addressing;	.scl	2;	.type	32;	.endef
_show_list_addressing:
LASANPC24:
LFB24:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%ebx	 #
	subl	$36, %esp	 #,
	.cfi_offset 3, -12
	leal	8(%ebp), %eax	 #, _14
	movl	%eax, %edx	 # _22, _23
	shrl	$3, %edx	 #, _23
	addl	$536870912, %edx	 #, _24
	movzbl	(%edx), %edx	 # *_25, _26
	testb	%dl, %dl	 # _26
	setne	%cl	 #, _27
	movl	%eax, %ebx	 # _22, _28
	andl	$7, %ebx	 #, _28
	addl	$3, %ebx	 #, _30
	cmpb	%dl, %bl	 # _26, _30
	setge	%dl	 #, _31
	andl	%ecx, %edx	 # _27, _32
	testb	%dl, %dl	 # _32
	je	L67	 #,
	movl	%eax, (%esp)	 # _22,
	call	___asan_report_load4	 #
L67:
	movl	8(%ebp), %eax	 # list.head, tmp139
	movl	%eax, -12(%ebp)	 # tmp139, item
	jmp	L68	 #
L72:
	movl	-12(%ebp), %eax	 # item, item.9_5
	movl	%eax, 4(%esp)	 # item.9_5,
	movl	$LC6, (%esp)	 #,
	call	_printf	 #
	movl	-12(%ebp), %eax	 # item, _15
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
	je	L69	 #,
	movl	%eax, (%esp)	 # _33,
	call	___asan_report_load4	 #
L69:
	movl	-12(%ebp), %eax	 # item, tmp140
	movl	(%eax), %eax	 # item_1->value, _7
	movl	%eax, 4(%esp)	 # _7,
	movl	$LC7, (%esp)	 #,
	call	_printf	 #
	movl	-12(%ebp), %eax	 # item, tmp141
	addl	$4, %eax	 #, _16
	movl	%eax, %edx	 # _44, _45
	shrl	$3, %edx	 #, _45
	addl	$536870912, %edx	 #, _46
	movzbl	(%edx), %edx	 # *_47, _48
	testb	%dl, %dl	 # _48
	setne	%cl	 #, _49
	movl	%eax, %ebx	 # _44, _50
	andl	$7, %ebx	 #, _50
	addl	$3, %ebx	 #, _52
	cmpb	%dl, %bl	 # _48, _52
	setge	%dl	 #, _53
	andl	%ecx, %edx	 # _49, _54
	testb	%dl, %dl	 # _54
	je	L70	 #,
	movl	%eax, (%esp)	 # _44,
	call	___asan_report_load4	 #
L70:
	movl	-12(%ebp), %eax	 # item, tmp142
	movl	4(%eax), %eax	 # item_1->next, _9
	movl	%eax, 4(%esp)	 # _10,
	movl	$LC8, (%esp)	 #,
	call	_printf	 #
	movl	$10, (%esp)	 #,
	call	_putchar	 #
	movl	-12(%ebp), %eax	 # item, tmp143
	addl	$4, %eax	 #, _17
	movl	%eax, %edx	 # _55, _56
	shrl	$3, %edx	 #, _56
	addl	$536870912, %edx	 #, _57
	movzbl	(%edx), %edx	 # *_58, _59
	testb	%dl, %dl	 # _59
	setne	%cl	 #, _60
	movl	%eax, %ebx	 # _55, _61
	andl	$7, %ebx	 #, _61
	addl	$3, %ebx	 #, _63
	cmpb	%dl, %bl	 # _59, _63
	setge	%dl	 #, _64
	andl	%ecx, %edx	 # _60, _65
	testb	%dl, %dl	 # _65
	je	L71	 #,
	movl	%eax, (%esp)	 # _55,
	call	___asan_report_load4	 #
L71:
	movl	-12(%ebp), %eax	 # item, tmp144
	movl	4(%eax), %eax	 # item_1->next, tmp145
	movl	%eax, -12(%ebp)	 # tmp145, item
L68:
	cmpl	$0, -12(%ebp)	 #, item
	jne	L72	 #,
	nop
	addl	$36, %esp	 #,
	popl	%ebx	 #
	.cfi_restore 3
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.def	___asan_stack_malloc_2;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC9:
	.ascii "2 32 4 7 my_list 96 8 6 values \0"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LASANPC25:
LFB25:
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
	subl	$192, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	32(%esp), %edi	 #, tmp89
	movl	%edi, 28(%esp)	 # tmp89, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L73	 #,
	movl	$160, (%esp)	 #,
	call	___asan_stack_malloc_2	 #
	testl	%eax, %eax	 #
	je	L73	 #,
	movl	%eax, %edi	 #, tmp89
L73:
	leal	160(%edi), %eax	 #, tmp91
	movl	%eax, %esi	 # tmp91, tmp88
	movl	$1102416563, (%edi)	 #,
	movl	$LC9, 4(%edi)	 #,
	movl	$LASANPC25, 8(%edi)	 #,
	movl	%edi, %ebx	 # tmp89, tmp92
	shrl	$3, %ebx	 #, tmp92
	movl	$-235802127, 536870912(%ebx)	 #,
	movl	$-185273340, 536870916(%ebx)	 #,
	movl	$-218959118, 536870920(%ebx)	 #,
	movl	$-185273344, 536870924(%ebx)	 #,
	movl	$-202116109, 536870928(%ebx)	 #,
	call	___main	 #
	movl	$3, -64(%esi)	 #, values
	movl	$5, -60(%esi)	 #, values
	movl	$8, 4(%esp)	 #,
	leal	-64(%esi), %eax	 #, tmp94
	movl	%eax, (%esp)	 # tmp94,
	call	_create_with_pushes	 #
	movl	%eax, -128(%esi)	 # tmp96, my_list
	movl	-128(%esi), %eax	 # my_list, tmp97
	movl	%eax, (%esp)	 # tmp97,
	call	_print_list	 #
	movl	$19, 4(%esp)	 #,
	leal	-128(%esi), %eax	 #, tmp98
	movl	%eax, (%esp)	 # tmp98,
	call	_push	 #
	movl	-128(%esi), %eax	 # my_list, tmp99
	movl	%eax, (%esp)	 # tmp99,
	call	_print_list	 #
	leal	-128(%esi), %eax	 #, tmp100
	movl	%eax, (%esp)	 # tmp100,
	call	_pop	 #
	movl	-128(%esi), %eax	 # my_list, tmp101
	movl	%eax, (%esp)	 # tmp101,
	call	_print_list	 #
	leal	-128(%esi), %eax	 #, tmp102
	movl	%eax, (%esp)	 # tmp102,
	call	_pop	 #
	movl	-128(%esi), %eax	 # my_list, tmp103
	movl	%eax, (%esp)	 # tmp103,
	call	_print_list	 #
	leal	-128(%esi), %eax	 #, tmp104
	movl	%eax, (%esp)	 # tmp104,
	call	_pop	 #
	movl	-128(%esi), %eax	 # my_list, tmp105
	movl	%eax, (%esp)	 # tmp105,
	call	_print_list	 #
	movl	$40, 4(%esp)	 #,
	leal	-128(%esi), %eax	 #, tmp106
	movl	%eax, (%esp)	 # tmp106,
	call	_push	 #
	movl	-128(%esi), %eax	 # my_list, tmp107
	movl	%eax, (%esp)	 # tmp107,
	call	_print_list	 #
	movl	$0, %eax	 #, _16
	cmpl	%edi, 28(%esp)	 # tmp89, %sfp
	je	L74	 #,
	movl	$1172321806, (%edi)	 #,
	movl	$-168430091, 536870912(%ebx)	 #,
	movl	$-168430091, 536870916(%ebx)	 #,
	movl	$-168430091, 536870920(%ebx)	 #,
	movl	$-168430091, 536870924(%ebx)	 #,
	movl	$-168430091, 536870928(%ebx)	 #,
	jmp	L75	 #
L74:
	movl	$0, 536870912(%ebx)	 #,
	movl	$0, 536870916(%ebx)	 #,
	movl	$0, 536870920(%ebx)	 #,
	movl	$0, 536870924(%ebx)	 #,
	movl	$0, 536870928(%ebx)	 #,
L75:
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
LFE25:
	.section .rdata,"dr"
LC10:
	.ascii "*LC0\0"
LC11:
	.ascii "ll2.c\0"
LC12:
	.ascii "*LC7\0"
LC13:
	.ascii "*LC4\0"
LC14:
	.ascii "*LC2\0"
LC15:
	.ascii "*LC5\0"
LC16:
	.ascii "*LC8\0"
LC17:
	.ascii "*LC3\0"
LC18:
	.ascii "*LC6\0"
	.data
	.align 32
LASAN0:
 # __beg:
	.long	LC0
 # __size:
	.long	26
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC10
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC7
 # __size:
	.long	11
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC12
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC4
 # __size:
	.long	4
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC13
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC2
 # __size:
	.long	11
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC14
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC5
 # __size:
	.long	5
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC15
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC8
 # __size:
	.long	10
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC16
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC3
 # __size:
	.long	3
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC17
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC6
 # __size:
	.long	13
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC18
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
	.text
	.def	__GLOBAL__sub_D_00099_0_pop;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_D_00099_0_pop:
LFB26:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$24, %esp	 #,
	movl	$8, 4(%esp)	 #,
	movl	$LASAN0, (%esp)	 #,
	call	___asan_unregister_globals	 #
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.section	.dtors.65436,"w"
	.align 4
	.long	__GLOBAL__sub_D_00099_0_pop
	.text
	.def	__GLOBAL__sub_I_00099_1_pop;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I_00099_1_pop:
LFB27:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$24, %esp	 #,
	call	___asan_init	 #
	call	___asan_version_mismatch_check_v6	 #
	movl	$8, 4(%esp)	 #,
	movl	$LASAN0, (%esp)	 #,
	call	___asan_register_globals	 #
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.section	.ctors.65436,"w"
	.align 4
	.long	__GLOBAL__sub_I_00099_1_pop
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	___asan_report_load4;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	___asan_report_store4;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	___asan_unregister_globals;	.scl	2;	.type	32;	.endef
	.def	___asan_init;	.scl	2;	.type	32;	.endef
	.def	___asan_version_mismatch_check_v6;	.scl	2;	.type	32;	.endef
	.def	___asan_register_globals;	.scl	2;	.type	32;	.endef
