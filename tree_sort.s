	.file	"tree_sort.c"
 # GNU C11 (MinGW.org GCC-6.3.0-1) version 6.3.0 (mingw32)
 #	compiled by GNU C version 6.3.0, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/6.3.0/
 # tree_sort.c -march=x86-64 -Wall -Wextra -fsanitize=address -fverbose-asm
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
	.globl	_create_tree
	.def	_create_tree;	.scl	2;	.type	32;	.endef
_create_tree:
LASANPC14:
LFB14:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	pushl	%ebx	 #
	subl	$36, %esp	 #,
	.cfi_offset 3, -12
	movl	$12, (%esp)	 #,
	call	_malloc	 #
	movl	%eax, -12(%ebp)	 # tmp125, tree
	movl	-12(%ebp), %eax	 # tree, _9
	movl	%eax, %edx	 # _15, _16
	shrl	$3, %edx	 #, _16
	addl	$536870912, %edx	 #, _17
	movzbl	(%edx), %edx	 # *_18, _19
	testb	%dl, %dl	 # _19
	setne	%cl	 #, _20
	movl	%eax, %ebx	 # _15, _21
	andl	$7, %ebx	 #, _21
	addl	$3, %ebx	 #, _23
	cmpb	%dl, %bl	 # _19, _23
	setge	%dl	 #, _24
	andl	%ecx, %edx	 # _20, _25
	testb	%dl, %dl	 # _25
	je	L2	 #,
	movl	%eax, (%esp)	 # _15,
	call	___asan_report_store4	 #
L2:
	movl	-12(%ebp), %eax	 # tree, tmp126
	movl	8(%ebp), %edx	 # value, tmp127
	movl	%edx, (%eax)	 # tmp127, tree_3->value
	movl	-12(%ebp), %eax	 # tree, tmp128
	addl	$4, %eax	 #, _10
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
	je	L3	 #,
	movl	%eax, (%esp)	 # _26,
	call	___asan_report_store4	 #
L3:
	movl	-12(%ebp), %eax	 # tree, tmp129
	movl	$0, 4(%eax)	 #, tree_3->left
	movl	-12(%ebp), %eax	 # tree, tmp130
	addl	$8, %eax	 #, _11
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
	je	L4	 #,
	movl	%eax, (%esp)	 # _37,
	call	___asan_report_store4	 #
L4:
	movl	-12(%ebp), %eax	 # tree, tmp131
	movl	$0, 8(%eax)	 #, tree_3->right
	movl	-12(%ebp), %eax	 # tree, _8
	addl	$36, %esp	 #,
	popl	%ebx	 #
	.cfi_restore 3
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_drop_value
	.def	_drop_value;	.scl	2;	.type	32;	.endef
_drop_value:
LASANPC15:
LFB15:
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
	movl	8(%ebp), %eax	 # tree, _24
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
	je	L7	 #,
	movl	%eax, (%esp)	 # _24,
	call	___asan_report_load4	 #
L7:
	movl	8(%ebp), %eax	 # tree, tmp149
	movl	(%eax), %eax	 # *tree_4(D), _5
	testl	%eax, %eax	 # _5
	jne	L8	 #,
	movl	12(%ebp), %eax	 # value, tmp150
	movl	%eax, (%esp)	 # tmp150,
	call	_create_tree	 #
	movl	%eax, %edi	 #, _8
	movl	8(%ebp), %eax	 # tree, _35
	movl	%eax, %edx	 # _35, _36
	shrl	$3, %edx	 #, _36
	addl	$536870912, %edx	 #, _37
	movzbl	(%edx), %edx	 # *_38, _39
	testb	%dl, %dl	 # _39
	setne	%bl	 #, _40
	movl	%eax, %esi	 # _35, _41
	andl	$7, %esi	 #, _41
	leal	3(%esi), %ecx	 #, _43
	cmpb	%dl, %cl	 # _39, _43
	setge	%dl	 #, _44
	andl	%ebx, %edx	 # _40, _45
	testb	%dl, %dl	 # _45
	je	L9	 #,
	movl	%eax, (%esp)	 # _35,
	call	___asan_report_store4	 #
L9:
	movl	8(%ebp), %eax	 # tree, tmp151
	movl	%edi, (%eax)	 # _8, *tree_4(D)
	jmp	L6	 #
L8:
	movl	8(%ebp), %eax	 # tree, _46
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
	je	L11	 #,
	movl	%eax, (%esp)	 # _46,
	call	___asan_report_load4	 #
L11:
	movl	8(%ebp), %eax	 # tree, tmp152
	movl	(%eax), %edx	 # *tree_4(D), _10
	movl	%edx, %eax	 # _10, _17
	movl	%eax, %ecx	 # _57, _58
	shrl	$3, %ecx	 #, _58
	addl	$536870912, %ecx	 #, _59
	movzbl	(%ecx), %ecx	 # *_60, _61
	testb	%cl, %cl	 # _61
	setne	-41(%ebp)	 #, %sfp
	movl	%eax, %esi	 # _57, _63
	andl	$7, %esi	 #, _63
	leal	3(%esi), %ebx	 #, _65
	cmpb	%cl, %bl	 # _61, _65
	setge	%cl	 #, _66
	andb	-41(%ebp), %cl	 # %sfp, _67
	testb	%cl, %cl	 # _67
	je	L12	 #,
	movl	%eax, (%esp)	 # _57,
	call	___asan_report_load4	 #
L12:
	movl	(%edx), %eax	 # _10->value, _11
	cmpl	12(%ebp), %eax	 # value, _11
	jle	L13	 #,
	movl	8(%ebp), %eax	 # tree, tmp153
	movl	(%eax), %eax	 # *tree_4(D), _12
	addl	$4, %eax	 #, tmp154
	movl	%eax, -28(%ebp)	 # tmp154, child
	jmp	L14	 #
L13:
	movl	8(%ebp), %eax	 # tree, _68
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
	je	L15	 #,
	movl	%eax, (%esp)	 # _68,
	call	___asan_report_load4	 #
L15:
	movl	8(%ebp), %eax	 # tree, tmp155
	movl	(%eax), %eax	 # *tree_4(D), _14
	addl	$8, %eax	 #, tmp156
	movl	%eax, -28(%ebp)	 # tmp156, child
L14:
	movl	12(%ebp), %eax	 # value, tmp157
	movl	%eax, 4(%esp)	 # tmp157,
	movl	-28(%ebp), %eax	 # child, tmp158
	movl	%eax, (%esp)	 # tmp158,
	call	_drop_value	 #
L6:
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
LFE15:
	.def	___asan_stack_malloc_1;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "1 32 4 3 top \0"
	.align 32
LC1:
	.ascii "%d\12\0"
	.space 60
	.text
	.globl	_create_sort_tree
	.def	_create_sort_tree;	.scl	2;	.type	32;	.endef
_create_sort_tree:
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
	subl	$156, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-120(%ebp), %esi	 #, tmp117
	movl	%esi, -148(%ebp)	 # tmp117, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L16	 #,
	movl	$96, (%esp)	 #,
	call	___asan_stack_malloc_1	 #
	testl	%eax, %eax	 #
	je	L16	 #,
	movl	%eax, %esi	 #, tmp117
L16:
	leal	96(%esi), %eax	 #, tmp119
	movl	%eax, %edi	 # tmp119, tmp116
	movl	$1102416563, (%esi)	 #,
	movl	$LC0, 4(%esi)	 #,
	movl	$LASANPC16, 8(%esi)	 #,
	movl	%esi, %ebx	 # tmp117, tmp120
	shrl	$3, %ebx	 #, tmp120
	movl	$-235802127, 536870912(%ebx)	 #,
	movl	$-185273340, 536870916(%ebx)	 #,
	movl	$-202116109, 536870920(%ebx)	 #,
	movl	12(%ebp), %eax	 # n_elements, tmp122
	movl	%eax, 4(%esp)	 # tmp122,
	movl	$LC1, (%esp)	 #,
	call	_printf	 #
	movl	8(%ebp), %edx	 # values, _22
	movl	%edx, %eax	 # _22, _23
	shrl	$3, %eax	 #, _23
	addl	$536870912, %eax	 #, _24
	movzbl	(%eax), %ecx	 # *_25, _26
	testb	%cl, %cl	 # _26
	setne	-140(%ebp)	 #, %sfp
	movl	%edx, %eax	 # _22, _28
	andl	$7, %eax	 #, _28
	addl	$3, %eax	 #, _30
	cmpb	%cl, %al	 # _26, _30
	setge	%al	 #, _31
	andb	-140(%ebp), %al	 # %sfp, _32
	testb	%al, %al	 # _32
	je	L20	 #,
	movl	%edx, (%esp)	 # _22,
	call	___asan_report_load4	 #
L20:
	movl	8(%ebp), %eax	 # values, tmp123
	movl	(%eax), %eax	 # *values_6(D), _7
	movl	%eax, (%esp)	 # _7,
	call	_create_tree	 #
	movl	%eax, -64(%edi)	 # top.0_9, top
	movl	$1, -124(%ebp)	 #, i
	jmp	L21	 #
L23:
	movl	-124(%ebp), %eax	 # i, i.1_12
	leal	0(,%eax,4), %edx	 #, _13
	movl	8(%ebp), %eax	 # values, tmp124
	addl	%edx, %eax	 # _13, _14
	movl	%eax, -140(%ebp)	 # _14, %sfp
	movl	%eax, %ecx	 # _14, _33
	movl	%ecx, %eax	 # _33, _34
	shrl	$3, %eax	 #, _34
	addl	$536870912, %eax	 #, _35
	movzbl	(%eax), %edx	 # *_36, _37
	testb	%dl, %dl	 # _37
	setne	-141(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _33, _39
	andl	$7, %eax	 #, _39
	addl	$3, %eax	 #, _41
	cmpb	%dl, %al	 # _37, _41
	setge	%al	 #, _42
	andb	-141(%ebp), %al	 # %sfp, _43
	testb	%al, %al	 # _43
	je	L22	 #,
	movl	%ecx, (%esp)	 # _33,
	call	___asan_report_load4	 #
L22:
	movl	-140(%ebp), %eax	 # %sfp, _14
	movl	(%eax), %eax	 # *_14, _15
	movl	%eax, 4(%esp)	 # _15,
	leal	-64(%edi), %eax	 #, tmp125
	movl	%eax, (%esp)	 # tmp125,
	call	_drop_value	 #
	addl	$1, -124(%ebp)	 #, i
L21:
	movl	-124(%ebp), %eax	 # i, tmp126
	cmpl	12(%ebp), %eax	 # n_elements, tmp126
	jl	L23	 #,
	movl	-64(%edi), %eax	 # top, _18
	cmpl	%esi, -148(%ebp)	 # tmp117, %sfp
	je	L17	 #,
	movl	$1172321806, (%esi)	 #,
	movl	$-168430091, 536870912(%ebx)	 #,
	movl	$-168430091, 536870916(%ebx)	 #,
	movl	$-168430091, 536870920(%ebx)	 #,
	jmp	L18	 #
L17:
	movl	$0, 536870912(%ebx)	 #,
	movl	$0, 536870916(%ebx)	 #,
	movl	$0, 536870920(%ebx)	 #,
L18:
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
LFE16:
	.globl	_collapse_sort_tree
	.def	_collapse_sort_tree;	.scl	2;	.type	32;	.endef
_collapse_sort_tree:
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
	subl	$44, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	cmpl	$0, 8(%ebp)	 #, tree
	je	L33	 #,
	movl	8(%ebp), %eax	 # tree, tmp154
	addl	$4, %eax	 #, _19
	movl	%eax, %edx	 # _27, _28
	shrl	$3, %edx	 #, _28
	addl	$536870912, %edx	 #, _29
	movzbl	(%edx), %edx	 # *_30, _31
	testb	%dl, %dl	 # _31
	setne	%cl	 #, _32
	movl	%eax, %ebx	 # _27, _33
	andl	$7, %ebx	 #, _33
	addl	$3, %ebx	 #, _35
	cmpb	%dl, %bl	 # _31, _35
	setge	%dl	 #, _36
	andl	%ecx, %edx	 # _32, _37
	testb	%dl, %dl	 # _37
	je	L28	 #,
	movl	%eax, (%esp)	 # _27,
	call	___asan_report_load4	 #
L28:
	movl	8(%ebp), %eax	 # tree, tmp155
	movl	4(%eax), %eax	 # tree_2(D)->left, _4
	movl	16(%ebp), %edx	 # count, tmp156
	movl	%edx, 8(%esp)	 # tmp156,
	movl	12(%ebp), %edx	 # sorted, tmp157
	movl	%edx, 4(%esp)	 # tmp157,
	movl	%eax, (%esp)	 # _4,
	call	_collapse_sort_tree	 #
	movl	16(%ebp), %eax	 # count, _38
	movl	%eax, %edx	 # _38, _39
	shrl	$3, %edx	 #, _39
	addl	$536870912, %edx	 #, _40
	movzbl	(%edx), %edx	 # *_41, _42
	testb	%dl, %dl	 # _42
	setne	%cl	 #, _43
	movl	%eax, %ebx	 # _38, _44
	andl	$7, %ebx	 #, _44
	addl	$3, %ebx	 #, _46
	cmpb	%dl, %bl	 # _42, _46
	setge	%dl	 #, _47
	andl	%ecx, %edx	 # _43, _48
	testb	%dl, %dl	 # _48
	je	L29	 #,
	movl	%eax, (%esp)	 # _38,
	call	___asan_report_load4	 #
L29:
	movl	16(%ebp), %eax	 # count, tmp158
	movl	(%eax), %eax	 # *count_6(D), _8
	leal	0(,%eax,4), %edx	 #, _10
	movl	12(%ebp), %eax	 # sorted, tmp159
	leal	(%edx,%eax), %edi	 #, _11
	movl	8(%ebp), %eax	 # tree, _20
	movl	%eax, %edx	 # _49, _50
	shrl	$3, %edx	 #, _50
	addl	$536870912, %edx	 #, _51
	movzbl	(%edx), %edx	 # *_52, _53
	testb	%dl, %dl	 # _53
	setne	%bl	 #, _54
	movl	%eax, %esi	 # _49, _55
	andl	$7, %esi	 #, _55
	leal	3(%esi), %ecx	 #, _57
	cmpb	%dl, %cl	 # _53, _57
	setge	%dl	 #, _58
	andl	%ebx, %edx	 # _54, _59
	testb	%dl, %dl	 # _59
	je	L30	 #,
	movl	%eax, (%esp)	 # _49,
	call	___asan_report_load4	 #
L30:
	movl	8(%ebp), %eax	 # tree, tmp160
	movl	(%eax), %eax	 # tree_2(D)->value, _12
	movl	%eax, -28(%ebp)	 # _12, %sfp
	movl	%edi, %eax	 # _11, _60
	movl	%eax, %edx	 # _60, _61
	shrl	$3, %edx	 #, _61
	addl	$536870912, %edx	 #, _62
	movzbl	(%edx), %edx	 # *_63, _64
	testb	%dl, %dl	 # _64
	setne	-29(%ebp)	 #, %sfp
	movzbl	-29(%ebp), %ecx	 # %sfp, _65
	movl	%eax, %esi	 # _60, _66
	andl	$7, %esi	 #, _66
	leal	3(%esi), %ebx	 #, _68
	cmpb	%dl, %bl	 # _64, _68
	setge	%dl	 #, _69
	andl	%ecx, %edx	 # _65, _70
	testb	%dl, %dl	 # _70
	je	L31	 #,
	movl	%eax, (%esp)	 # _60,
	call	___asan_report_store4	 #
L31:
	movl	-28(%ebp), %eax	 # %sfp, _12
	movl	%eax, (%edi)	 # _12, *_11
	movl	16(%ebp), %eax	 # count, tmp161
	movl	(%eax), %eax	 # *count_6(D), _14
	leal	1(%eax), %edx	 #, _15
	movl	16(%ebp), %eax	 # count, tmp162
	movl	%edx, (%eax)	 # _15, *count_6(D)
	movl	8(%ebp), %eax	 # tree, tmp163
	addl	$8, %eax	 #, _21
	movl	%eax, %edx	 # _71, _72
	shrl	$3, %edx	 #, _72
	addl	$536870912, %edx	 #, _73
	movzbl	(%edx), %edx	 # *_74, _75
	testb	%dl, %dl	 # _75
	setne	%cl	 #, _76
	movl	%eax, %ebx	 # _71, _77
	andl	$7, %ebx	 #, _77
	addl	$3, %ebx	 #, _79
	cmpb	%dl, %bl	 # _75, _79
	setge	%dl	 #, _80
	andl	%ecx, %edx	 # _76, _81
	testb	%dl, %dl	 # _81
	je	L32	 #,
	movl	%eax, (%esp)	 # _71,
	call	___asan_report_load4	 #
L32:
	movl	8(%ebp), %eax	 # tree, tmp164
	movl	8(%eax), %eax	 # tree_2(D)->right, _17
	movl	16(%ebp), %edx	 # count, tmp165
	movl	%edx, 8(%esp)	 # tmp165,
	movl	12(%ebp), %edx	 # sorted, tmp166
	movl	%edx, 4(%esp)	 # tmp166,
	movl	%eax, (%esp)	 # _17,
	call	_collapse_sort_tree	 #
	jmp	L25	 #
L33:
	nop
L25:
	addl	$44, %esp	 #,
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
	.section .rdata,"dr"
LC2:
	.ascii "1 32 4 5 count \0"
	.text
	.globl	_sort
	.def	_sort;	.scl	2;	.type	32;	.endef
_sort:
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
	subl	$156, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-120(%ebp), %esi	 #, tmp92
	movl	%esi, -140(%ebp)	 # tmp92, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L34	 #,
	movl	$96, (%esp)	 #,
	call	___asan_stack_malloc_1	 #
	testl	%eax, %eax	 #
	je	L34	 #,
	movl	%eax, %esi	 #, tmp92
L34:
	leal	96(%esi), %eax	 #, tmp94
	movl	%eax, %edi	 # tmp94, tmp91
	movl	$1102416563, (%esi)	 #,
	movl	$LC2, 4(%esi)	 #,
	movl	$LASANPC18, 8(%esi)	 #,
	movl	%esi, %ebx	 # tmp92, tmp95
	shrl	$3, %ebx	 #, tmp95
	movl	$-235802127, 536870912(%ebx)	 #,
	movl	$-185273340, 536870916(%ebx)	 #,
	movl	$-202116109, 536870920(%ebx)	 #,
	movl	12(%ebp), %eax	 # size, size.2_2
	shrl	$2, %eax	 #, _3
	movl	%eax, -132(%ebp)	 # _3, n_elements
	movl	-132(%ebp), %eax	 # n_elements, tmp97
	movl	%eax, 4(%esp)	 # tmp97,
	movl	$LC1, (%esp)	 #,
	call	_printf	 #
	movl	-132(%ebp), %eax	 # n_elements, tmp98
	movl	%eax, 4(%esp)	 # tmp98,
	movl	8(%ebp), %eax	 # values, tmp99
	movl	%eax, (%esp)	 # tmp99,
	call	_create_sort_tree	 #
	movl	%eax, -128(%ebp)	 # tmp100, sort_tree
	movl	-132(%ebp), %eax	 # n_elements, n_elements.3_10
	movl	$4, 4(%esp)	 #,
	movl	%eax, (%esp)	 # n_elements.3_10,
	call	_calloc	 #
	movl	%eax, -124(%ebp)	 # tmp101, sorted
	movl	$0, -64(%edi)	 #, count
	leal	-64(%edi), %eax	 #, tmp102
	movl	%eax, 8(%esp)	 # tmp102,
	movl	-124(%ebp), %eax	 # sorted, tmp103
	movl	%eax, 4(%esp)	 # tmp103,
	movl	-128(%ebp), %eax	 # sort_tree, tmp104
	movl	%eax, (%esp)	 # tmp104,
	call	_collapse_sort_tree	 #
	movl	-124(%ebp), %eax	 # sorted, _15
	cmpl	%esi, -140(%ebp)	 # tmp92, %sfp
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
LFE18:
	.section .rdata,"dr"
LC3:
	.ascii "1 32 36 6 values \0"
	.def	___main;	.scl	2;	.type	32;	.endef
	.align 32
LC4:
	.ascii "%d,\0"
	.space 60
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
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
	andl	$-16, %esp	 #,
	subl	$176, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	48(%esp), %edi	 #, tmp104
	movl	%edi, 24(%esp)	 # tmp104, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L39	 #,
	movl	$128, (%esp)	 #,
	call	___asan_stack_malloc_1	 #
	testl	%eax, %eax	 #
	je	L39	 #,
	movl	%eax, %edi	 #, tmp104
L39:
	leal	128(%edi), %eax	 #, tmp106
	movl	%eax, %ebx	 # tmp106, tmp103
	movl	$1102416563, (%edi)	 #,
	movl	$LC3, 4(%edi)	 #,
	movl	$LASANPC19, 8(%edi)	 #,
	movl	%edi, %esi	 # tmp104, tmp107
	shrl	$3, %esi	 #, tmp107
	movl	$-235802127, 536870912(%esi)	 #,
	movl	$-185273340, 536870920(%esi)	 #,
	movl	$-202116109, 536870924(%esi)	 #,
	call	___main	 #
	movl	$20, -96(%ebx)	 #, values
	movl	$3, -92(%ebx)	 #, values
	movl	$11, -88(%ebx)	 #, values
	movl	$9, -84(%ebx)	 #, values
	movl	$1, -80(%ebx)	 #, values
	movl	$4, -76(%ebx)	 #, values
	movl	$99, -72(%ebx)	 #, values
	movl	$-10, -68(%ebx)	 #, values
	movl	$1, -64(%ebx)	 #, values
	movl	$36, 4(%esp)	 #,
	leal	-96(%ebx), %eax	 #, tmp109
	movl	%eax, (%esp)	 # tmp109,
	call	_sort	 #
	movl	%eax, 40(%esp)	 # tmp110, sorted
	movl	$9, 44(%esp)	 #, n_elements
	movl	$0, 36(%esp)	 #, i
	jmp	L43	 #
L45:
	movl	36(%esp), %eax	 # i, i.4_17
	leal	0(,%eax,4), %edx	 #, _18
	movl	40(%esp), %eax	 # sorted, tmp111
	leal	(%edx,%eax), %ebx	 #, _19
	movl	%ebx, %edx	 # _19, _26
	movl	%edx, %eax	 # _26, _27
	shrl	$3, %eax	 #, _27
	addl	$536870912, %eax	 #, _28
	movzbl	(%eax), %ecx	 # *_29, _30
	testb	%cl, %cl	 # _30
	setne	31(%esp)	 #, %sfp
	movl	%edx, %eax	 # _26, _32
	andl	$7, %eax	 #, _32
	addl	$3, %eax	 #, _34
	cmpb	%cl, %al	 # _30, _34
	setge	%al	 #, _35
	andb	31(%esp), %al	 # %sfp, _36
	testb	%al, %al	 # _36
	je	L44	 #,
	movl	%edx, (%esp)	 # _26,
	call	___asan_report_load4	 #
L44:
	movl	(%ebx), %eax	 # *_19, _20
	movl	%eax, 4(%esp)	 # _20,
	movl	$LC4, (%esp)	 #,
	call	_printf	 #
	addl	$1, 36(%esp)	 #, i
L43:
	movl	36(%esp), %eax	 # i, tmp112
	cmpl	44(%esp), %eax	 # n_elements, tmp112
	jl	L45	 #,
	movl	$0, %eax	 #, _23
	cmpl	%edi, 24(%esp)	 # tmp104, %sfp
	je	L40	 #,
	movl	$1172321806, (%edi)	 #,
	movl	$-168430091, 536870912(%esi)	 #,
	movl	$-168430091, 536870916(%esi)	 #,
	movl	$-168430091, 536870920(%esi)	 #,
	movl	$-168430091, 536870924(%esi)	 #,
	jmp	L41	 #
L40:
	movl	$0, 536870912(%esi)	 #,
	movl	$0, 536870920(%esi)	 #,
	movl	$0, 536870924(%esi)	 #,
L41:
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
LFE19:
	.section .rdata,"dr"
LC5:
	.ascii "*LC4\0"
LC6:
	.ascii "tree_sort.c\0"
LC7:
	.ascii "*LC1\0"
	.data
	.align 32
LASAN0:
 # __beg:
	.long	LC4
 # __size:
	.long	4
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC5
 # __module_name:
	.long	LC6
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC1
 # __size:
	.long	4
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC7
 # __module_name:
	.long	LC6
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
	.text
	.def	__GLOBAL__sub_D_00099_0_create_tree;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_D_00099_0_create_tree:
LFB20:
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
LFE20:
	.section	.dtors.65436,"w"
	.align 4
	.long	__GLOBAL__sub_D_00099_0_create_tree
	.text
	.def	__GLOBAL__sub_I_00099_1_create_tree;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I_00099_1_create_tree:
LFB21:
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
LFE21:
	.section	.ctors.65436,"w"
	.align 4
	.long	__GLOBAL__sub_I_00099_1_create_tree
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	___asan_report_store4;	.scl	2;	.type	32;	.endef
	.def	___asan_report_load4;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	___asan_unregister_globals;	.scl	2;	.type	32;	.endef
	.def	___asan_init;	.scl	2;	.type	32;	.endef
	.def	___asan_version_mismatch_check_v6;	.scl	2;	.type	32;	.endef
	.def	___asan_register_globals;	.scl	2;	.type	32;	.endef
