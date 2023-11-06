	.file	"allocator.c"
 # GNU C11 (MinGW.org GCC-6.3.0-1) version 6.3.0 (mingw32)
 #	compiled by GNU C version 6.3.0, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/6.3.0/
 # allocator.c -march=x86-64 -Wall -Wextra -fsanitize=address -fverbose-asm
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

	.comm	_HEAP_BASE, 4, 2
	.globl	_N_ELEMENTS_LIMIT
	.data
	.align 32
_N_ELEMENTS_LIMIT:
	.long	100
	.space 60
	.globl	_N_ALLOCATE_LIMIT
	.align 32
_N_ALLOCATE_LIMIT:
	.long	10
	.space 60
	.text
	.globl	_BK_LOCATION
	.def	_BK_LOCATION;	.scl	2;	.type	32;	.endef
_BK_LOCATION:
LASANPC14:
LFB14:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	movl	_HEAP_BASE, %eax	 # HEAP_BASE, HEAP_BASE.0_2
	movl	_N_ELEMENTS_LIMIT, %edx	 # N_ELEMENTS_LIMIT, N_ELEMENTS_LIMIT.1_3
	sall	$2, %edx	 #, _5
	addl	%edx, %eax	 # _5, _6
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_COUNT_LOCATION
	.def	_COUNT_LOCATION;	.scl	2;	.type	32;	.endef
_COUNT_LOCATION:
LASANPC15:
LFB15:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	call	_BK_LOCATION	 #
	movl	%eax, %edx	 #, _3
	movl	_N_ALLOCATE_LIMIT, %eax	 # N_ALLOCATE_LIMIT, N_ALLOCATE_LIMIT.3_4
	sall	$3, %eax	 #, _6
	addl	%edx, %eax	 # _3, _7
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.def	___asan_stack_malloc_1;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "1 32 8 9 new_block \0"
	.align 32
LC1:
	.ascii "cant make any more allocations :(\0"
	.space 62
	.align 32
LC2:
	.ascii "no space :O\0"
	.space 52
	.align 32
LC3:
	.ascii "allocated :D\0"
	.space 51
	.text
	.globl	_my_malloc
	.def	_my_malloc;	.scl	2;	.type	32;	.endef
_my_malloc:
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
	subl	$188, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-120(%ebp), %eax	 #, tmp264
	movl	%eax, -156(%ebp)	 # tmp264, %sfp
	movl	%eax, -176(%ebp)	 # tmp264, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L5	 #,
	movl	$96, (%esp)	 #,
	call	___asan_stack_malloc_1	 #
	testl	%eax, %eax	 #
	je	L5	 #,
	movl	%eax, -156(%ebp)	 #, %sfp
L5:
	movl	-156(%ebp), %edi	 # %sfp, tmp264
	movl	%edi, %eax	 # tmp264, tmp264
	addl	$96, %eax	 #, tmp266
	movl	%eax, -164(%ebp)	 # tmp266, %sfp
	movl	%edi, %eax	 # tmp264, tmp264
	movl	$1102416563, (%eax)	 #,
	movl	%edi, %eax	 # tmp264, tmp264
	movl	$LC0, 4(%eax)	 #,
	movl	$LASANPC16, 8(%eax)	 #,
	shrl	$3, %eax	 #, tmp267
	movl	%eax, %edi	 # tmp267, tmp267
	movl	$-235802127, 536870912(%edi)	 #,
	movl	$-185273344, 536870916(%edi)	 #,
	movl	$-202116109, 536870920(%edi)	 #,
	call	_COUNT_LOCATION	 #
	movl	%eax, %esi	 #, _18
	movl	%esi, %ecx	 # _18, _107
	movl	%ecx, %eax	 # _107, _108
	shrl	$3, %eax	 #, _108
	addl	$536870912, %eax	 #, _109
	movzbl	(%eax), %edx	 # *_110, _111
	testb	%dl, %dl	 # _111
	setne	%bl	 #, _112
	movl	%ecx, %eax	 # _107, _113
	andl	$7, %eax	 #, _113
	addl	$3, %eax	 #, _115
	cmpb	%dl, %al	 # _111, _115
	setge	%al	 #, _116
	andl	%ebx, %eax	 # _112, _117
	testb	%al, %al	 # _117
	je	L9	 #,
	movl	%ecx, (%esp)	 # _107,
	call	___asan_report_load4	 #
L9:
	movl	(%esi), %eax	 # *_18, tmp269
	movl	%eax, -124(%ebp)	 # tmp269, n_allocations
	movl	_N_ALLOCATE_LIMIT, %eax	 # N_ALLOCATE_LIMIT, N_ALLOCATE_LIMIT.5_20
	cmpl	%eax, -124(%ebp)	 # N_ALLOCATE_LIMIT.5_20, n_allocations
	jne	L10	 #,
	movl	$LC1, (%esp)	 #,
	call	_puts	 #
	movl	$0, %eax	 #, _8
	jmp	L33	 #
L10:
	movl	$0, -152(%ebp)	 #, selected_location
	movl	$0, -144(%ebp)	 #, i
	jmp	L12	 #
L21:
	cmpl	$0, -144(%ebp)	 #, i
	jne	L13	 #,
	movl	_HEAP_BASE, %eax	 # HEAP_BASE, tmp270
	movl	%eax, -140(%ebp)	 # tmp270, space_start
	jmp	L14	 #
L13:
	call	_BK_LOCATION	 #
	movl	%eax, %edx	 #, _28
	movl	-144(%ebp), %eax	 # i, i.6_29
	addl	$536870911, %eax	 #, _30
	sall	$3, %eax	 #, _31
	leal	(%edx,%eax), %esi	 #, _32
	leal	4(%esi), %eax	 #, _96
	movl	%eax, %ecx	 # _96, _118
	movl	%ecx, %eax	 # _118, _119
	shrl	$3, %eax	 #, _119
	addl	$536870912, %eax	 #, _120
	movzbl	(%eax), %edx	 # *_121, _122
	testb	%dl, %dl	 # _122
	setne	%bl	 #, _123
	movl	%ecx, %eax	 # _118, _124
	andl	$7, %eax	 #, _124
	addl	$3, %eax	 #, _126
	cmpb	%dl, %al	 # _122, _126
	setge	%al	 #, _127
	andl	%ebx, %eax	 # _123, _128
	testb	%al, %al	 # _128
	je	L15	 #,
	movl	%ecx, (%esp)	 # _118,
	call	___asan_report_load4	 #
L15:
	movl	4(%esi), %eax	 # _32->end, tmp271
	movl	%eax, -140(%ebp)	 # tmp271, space_start
L14:
	movl	-144(%ebp), %eax	 # i, tmp272
	cmpl	-124(%ebp), %eax	 # n_allocations, tmp272
	jne	L16	 #,
	call	_BK_LOCATION	 #
	movl	%eax, -136(%ebp)	 # tmp273, space_end
	jmp	L17	 #
L16:
	call	_BK_LOCATION	 #
	movl	%eax, %edx	 #, _37
	movl	-144(%ebp), %eax	 # i, i.7_38
	sall	$3, %eax	 #, _39
	leal	(%edx,%eax), %esi	 #, _40
	movl	%esi, %eax	 # _40, _97
	movl	%eax, %ecx	 # _97, _129
	movl	%ecx, %eax	 # _129, _130
	shrl	$3, %eax	 #, _130
	addl	$536870912, %eax	 #, _131
	movzbl	(%eax), %edx	 # *_132, _133
	testb	%dl, %dl	 # _133
	setne	%bl	 #, _134
	movl	%ecx, %eax	 # _129, _135
	andl	$7, %eax	 #, _135
	addl	$3, %eax	 #, _137
	cmpb	%dl, %al	 # _133, _137
	setge	%al	 #, _138
	andl	%ebx, %eax	 # _134, _139
	testb	%al, %al	 # _139
	je	L18	 #,
	movl	%ecx, (%esp)	 # _129,
	call	___asan_report_load4	 #
L18:
	movl	(%esi), %eax	 # _40->start, tmp274
	movl	%eax, -136(%ebp)	 # tmp274, space_end
L17:
	movl	-136(%ebp), %edx	 # space_end, space_end.8_42
	movl	-140(%ebp), %eax	 # space_start, space_start.9_43
	subl	%eax, %edx	 # space_start.9_43, space_end.8_42
	movl	%edx, %eax	 # space_end.8_42, _44
	sarl	$2, %eax	 #, tmp275
	cmpl	12(%ebp), %eax	 # n_items, _45
	jl	L19	 #,
	movl	-140(%ebp), %eax	 # space_start, tmp276
	movl	%eax, -152(%ebp)	 # tmp276, selected_location
	movl	-144(%ebp), %eax	 # i, tmp277
	movl	%eax, -148(%ebp)	 # tmp277, selected_bk_idx
	jmp	L20	 #
L19:
	addl	$1, -144(%ebp)	 #, i
L12:
	movl	-144(%ebp), %eax	 # i, tmp278
	cmpl	-124(%ebp), %eax	 # n_allocations, tmp278
	jle	L21	 #,
L20:
	cmpl	$0, -152(%ebp)	 #, selected_location
	jne	L22	 #,
	movl	$LC2, (%esp)	 #,
	call	_puts	 #
	movl	$0, %eax	 #, _8
	jmp	L33	 #
L22:
	movl	$0, -132(%ebp)	 #, i
	jmp	L23	 #
L26:
	movl	-132(%ebp), %eax	 # i, i.10_53
	leal	0(,%eax,4), %edx	 #, _54
	movl	-152(%ebp), %eax	 # selected_location, tmp279
	addl	%edx, %eax	 # _54, _55
	movl	%eax, -160(%ebp)	 # _55, %sfp
	movl	-132(%ebp), %eax	 # i, i.11_56
	leal	0(,%eax,4), %edx	 #, _57
	movl	8(%ebp), %eax	 # data, tmp280
	leal	(%edx,%eax), %esi	 #, _59
	movl	%esi, %ecx	 # _59, _140
	movl	%ecx, %eax	 # _140, _141
	shrl	$3, %eax	 #, _141
	addl	$536870912, %eax	 #, _142
	movzbl	(%eax), %edx	 # *_143, _144
	testb	%dl, %dl	 # _144
	setne	%bl	 #, _145
	movl	%ecx, %eax	 # _140, _146
	andl	$7, %eax	 #, _146
	addl	$3, %eax	 #, _148
	cmpb	%dl, %al	 # _144, _148
	setge	%al	 #, _149
	andl	%ebx, %eax	 # _145, _150
	testb	%al, %al	 # _150
	je	L24	 #,
	movl	%ecx, (%esp)	 # _140,
	call	___asan_report_load4	 #
L24:
	movl	(%esi), %esi	 # *_59, _60
	movl	-160(%ebp), %ecx	 # %sfp, _151
	movl	%ecx, %eax	 # _151, _152
	shrl	$3, %eax	 #, _152
	addl	$536870912, %eax	 #, _153
	movzbl	(%eax), %edx	 # *_154, _155
	testb	%dl, %dl	 # _155
	setne	%bl	 #, _156
	movl	%ecx, %eax	 # _151, _157
	andl	$7, %eax	 #, _157
	addl	$3, %eax	 #, _159
	cmpb	%dl, %al	 # _155, _159
	setge	%al	 #, _160
	andl	%ebx, %eax	 # _156, _161
	testb	%al, %al	 # _161
	je	L25	 #,
	movl	%ecx, (%esp)	 # _151,
	call	___asan_report_store4	 #
L25:
	movl	-160(%ebp), %eax	 # %sfp, _55
	movl	%esi, (%eax)	 # _60, *_55
	addl	$1, -132(%ebp)	 #, i
L23:
	movl	-132(%ebp), %eax	 # i, tmp281
	cmpl	12(%ebp), %eax	 # n_items, tmp281
	jl	L26	 #,
	movl	-152(%ebp), %eax	 # selected_location, tmp282
	movl	-164(%ebp), %ebx	 # %sfp, tmp263
	movl	%eax, -64(%ebx)	 # tmp282, new_block.start
	movl	12(%ebp), %eax	 # n_items, n_items.12_64
	leal	0(,%eax,4), %edx	 #, _65
	movl	-152(%ebp), %eax	 # selected_location, tmp283
	addl	%edx, %eax	 # _65, _66
	movl	%eax, -60(%ebx)	 # _66, new_block.end
	movl	-124(%ebp), %eax	 # n_allocations, tmp284
	movl	%eax, -128(%ebp)	 # tmp284, i
	jmp	L27	 #
L30:
	call	_BK_LOCATION	 #
	movl	%eax, %edx	 #, _70
	movl	-128(%ebp), %eax	 # i, i.13_71
	sall	$3, %eax	 #, _72
	addl	%edx, %eax	 # _70, _73
	movl	%eax, %esi	 # _73, _73
	movl	%esi, -168(%ebp)	 # _73, %sfp
	call	_BK_LOCATION	 #
	movl	%eax, %edx	 #, _75
	movl	-128(%ebp), %eax	 # i, i.14_76
	addl	$536870911, %eax	 #, _77
	sall	$3, %eax	 #, _78
	addl	%edx, %eax	 # _75, _79
	movl	%eax, -160(%ebp)	 # _79, %sfp
	movl	%esi, %eax	 # _162, _163
	shrl	$3, %eax	 #, _163
	addl	$536870912, %eax	 #, _164
	movzbl	(%eax), %edx	 # *_165, _166
	testb	%dl, %dl	 # _166
	setne	%cl	 #, _167
	movl	%esi, %eax	 # _162, _168
	andl	$7, %eax	 #, _168
	cmpb	%dl, %al	 # _166, _169
	setge	%al	 #, _170
	andl	%eax, %ecx	 # _170, _167
	movb	%cl, -169(%ebp)	 # _167, %sfp
	movl	$8, %eax	 #, tmp285
	subl	$1, %eax	 #, _172
	leal	(%esi,%eax), %ecx	 #, _173
	movl	%ecx, %eax	 # _173, _174
	shrl	$3, %eax	 #, _174
	addl	$536870912, %eax	 #, _175
	movzbl	(%eax), %edx	 # *_176, _177
	testb	%dl, %dl	 # _177
	setne	%bl	 #, _178
	movl	%ecx, %eax	 # _173, _173
	andl	$7, %eax	 #, _173
	cmpb	%dl, %al	 # _177, _180
	setge	%al	 #, _181
	andl	%ebx, %eax	 # _178, _182
	orb	-169(%ebp), %al	 # %sfp, _183
	testb	%al, %al	 # _183
	je	L28	 #,
	movl	$8, 4(%esp)	 #,
	movl	%esi, (%esp)	 # _162,
	call	___asan_report_store_n	 #
L28:
	movl	-160(%ebp), %esi	 # %sfp, _184
	movl	%esi, %eax	 # _184, _185
	shrl	$3, %eax	 #, _185
	addl	$536870912, %eax	 #, _186
	movzbl	(%eax), %edx	 # *_187, _188
	testb	%dl, %dl	 # _188
	setne	%cl	 #, _189
	movl	%esi, %eax	 # _184, _190
	andl	$7, %eax	 #, _190
	cmpb	%dl, %al	 # _188, _191
	setge	%al	 #, _192
	andl	%eax, %ecx	 # _192, _189
	movb	%cl, -169(%ebp)	 # _189, %sfp
	movl	$8, %eax	 #, tmp286
	subl	$1, %eax	 #, _194
	leal	(%esi,%eax), %ecx	 #, _195
	movl	%ecx, %eax	 # _195, _196
	shrl	$3, %eax	 #, _196
	addl	$536870912, %eax	 #, _197
	movzbl	(%eax), %edx	 # *_198, _199
	testb	%dl, %dl	 # _199
	setne	%bl	 #, _200
	movl	%ecx, %eax	 # _195, _195
	andl	$7, %eax	 #, _195
	cmpb	%dl, %al	 # _199, _202
	setge	%al	 #, _203
	andl	%ebx, %eax	 # _200, _204
	orb	-169(%ebp), %al	 # %sfp, _205
	testb	%al, %al	 # _205
	je	L29	 #,
	movl	$8, 4(%esp)	 #,
	movl	%esi, (%esp)	 # _184,
	call	___asan_report_load_n	 #
L29:
	movl	-160(%ebp), %eax	 # %sfp, _79
	movl	4(%eax), %edx	 # *_79,
	movl	(%eax), %eax	 # *_79, tmp287
	movl	-168(%ebp), %ebx	 # %sfp, _73
	movl	%eax, (%ebx)	 # tmp287, *_73
	movl	%edx, 4(%ebx)	 #, *_73
	subl	$1, -128(%ebp)	 #, i
L27:
	movl	-128(%ebp), %eax	 # i, tmp288
	cmpl	-148(%ebp), %eax	 # selected_bk_idx, tmp288
	jg	L30	 #,
	call	_BK_LOCATION	 #
	movl	%eax, %edx	 #, _83
	movl	-148(%ebp), %eax	 # selected_bk_idx, selected_bk_idx.15_84
	sall	$3, %eax	 #, _85
	addl	%edx, %eax	 # _83, _86
	movl	%eax, -160(%ebp)	 # _86, %sfp
	movl	%eax, %esi	 # _86, _206
	movl	%esi, %eax	 # _206, _207
	shrl	$3, %eax	 #, _207
	addl	$536870912, %eax	 #, _208
	movzbl	(%eax), %edx	 # *_209, _210
	testb	%dl, %dl	 # _210
	setne	%cl	 #, _211
	movl	%esi, %eax	 # _206, _212
	andl	$7, %eax	 #, _212
	cmpb	%dl, %al	 # _210, _213
	setge	%al	 #, _214
	andl	%eax, %ecx	 # _214, _211
	movb	%cl, -168(%ebp)	 # _211, %sfp
	movl	$8, %eax	 #, tmp289
	subl	$1, %eax	 #, _216
	leal	(%esi,%eax), %ecx	 #, _217
	movl	%ecx, %eax	 # _217, _218
	shrl	$3, %eax	 #, _218
	addl	$536870912, %eax	 #, _219
	movzbl	(%eax), %edx	 # *_220, _221
	testb	%dl, %dl	 # _221
	setne	%bl	 #, _222
	movl	%ecx, %eax	 # _217, _217
	andl	$7, %eax	 #, _217
	cmpb	%dl, %al	 # _221, _224
	setge	%al	 #, _225
	andl	%ebx, %eax	 # _222, _226
	orb	-168(%ebp), %al	 # %sfp, _227
	testb	%al, %al	 # _227
	je	L31	 #,
	movl	$8, 4(%esp)	 #,
	movl	%esi, (%esp)	 # _206,
	call	___asan_report_store_n	 #
L31:
	movl	-164(%ebp), %eax	 # %sfp, tmp263
	movl	-60(%eax), %edx	 # new_block,
	movl	-64(%eax), %eax	 # new_block, tmp290
	movl	-160(%ebp), %ebx	 # %sfp, _86
	movl	%eax, (%ebx)	 # tmp290, *_86
	movl	%edx, 4(%ebx)	 #, *_86
	call	_COUNT_LOCATION	 #
	movl	%eax, %edx	 #, _89
	movl	%edx, %ecx	 # _89, _228
	movl	%ecx, %eax	 # _228, _229
	shrl	$3, %eax	 #, _229
	addl	$536870912, %eax	 #, _230
	movzbl	(%eax), %ebx	 # *_231, _232
	testb	%bl, %bl	 # _232
	setne	-160(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _228, _234
	andl	$7, %eax	 #, _234
	addl	$3, %eax	 #, _236
	cmpb	%bl, %al	 # _232, _236
	setge	%al	 #, _237
	andb	-160(%ebp), %al	 # %sfp, _238
	testb	%al, %al	 # _238
	je	L32	 #,
	movl	%ecx, (%esp)	 # _228,
	call	___asan_report_load4	 #
L32:
	movl	(%edx), %eax	 # *_89, _90
	addl	$1, %eax	 #, _91
	movl	%eax, (%edx)	 # _91, *_89
	movl	$LC3, (%esp)	 #,
	call	_puts	 #
	movl	-152(%ebp), %eax	 # selected_location, _8
L33:
	movl	-156(%ebp), %esi	 # %sfp, tmp264
	cmpl	%esi, -176(%ebp)	 # tmp264, %sfp
	je	L6	 #,
	movl	-156(%ebp), %ebx	 # %sfp, tmp264
	movl	$1172321806, (%ebx)	 #,
	movl	$-168430091, 536870912(%edi)	 #,
	movl	$-168430091, 536870916(%edi)	 #,
	movl	$-168430091, 536870920(%edi)	 #,
	jmp	L7	 #
L6:
	movl	$0, 536870912(%edi)	 #,
	movl	$0, 536870916(%edi)	 #,
	movl	$0, 536870920(%edi)	 #,
L7:
	addl	$188, %esp	 #,
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
	.section .rdata,"dr"
LC4:
	.ascii "1 32 8 5 block \0"
	.align 32
LC5:
	.ascii "doesnt point to any data ):<\0"
	.space 35
	.text
	.globl	_my_free
	.def	_my_free;	.scl	2;	.type	32;	.endef
_my_free:
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
	subl	$172, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-120(%ebp), %edi	 #, tmp169
	movl	%edi, -156(%ebp)	 # tmp169, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L34	 #,
	movl	$96, (%esp)	 #,
	call	___asan_stack_malloc_1	 #
	testl	%eax, %eax	 #
	je	L34	 #,
	movl	%eax, %edi	 #, tmp169
L34:
	leal	96(%edi), %eax	 #, tmp171
	movl	%eax, -140(%ebp)	 # tmp171, %sfp
	movl	$1102416563, (%edi)	 #,
	movl	$LC4, 4(%edi)	 #,
	movl	$LASANPC17, 8(%edi)	 #,
	movl	%edi, %esi	 # tmp169, tmp172
	shrl	$3, %esi	 #, tmp172
	movl	$-235802127, 536870912(%esi)	 #,
	movl	$-185273344, 536870916(%esi)	 #,
	movl	$-202116109, 536870920(%esi)	 #,
	movl	$0, -128(%ebp)	 #, found_ptr
	movl	$0, -124(%ebp)	 #, i
	jmp	L38	 #
L44:
	call	_BK_LOCATION	 #
	movl	%eax, %edx	 #, _14
	movl	-124(%ebp), %eax	 # i, i.16_15
	sall	$3, %eax	 #, _16
	addl	%edx, %eax	 # _14, _17
	movl	%eax, -144(%ebp)	 # _17, %sfp
	movl	%eax, %ebx	 # _17, _41
	movl	%ebx, -148(%ebp)	 # _41, %sfp
	movl	%ebx, %eax	 # _41, _42
	shrl	$3, %eax	 #, _42
	addl	$536870912, %eax	 #, _43
	movzbl	(%eax), %edx	 # *_44, _45
	testb	%dl, %dl	 # _45
	setne	%cl	 #, _46
	movl	%ebx, %eax	 # _41, _47
	andl	$7, %eax	 #, _47
	cmpb	%dl, %al	 # _45, _48
	setge	%al	 #, _49
	andl	%eax, %ecx	 # _49, _46
	movb	%cl, -149(%ebp)	 # _46, %sfp
	movl	$8, %eax	 #, tmp173
	subl	$1, %eax	 #, _51
	leal	(%ebx,%eax), %ecx	 #, _52
	movl	%ecx, %eax	 # _52, _53
	shrl	$3, %eax	 #, _53
	addl	$536870912, %eax	 #, _54
	movzbl	(%eax), %edx	 # *_55, _56
	testb	%dl, %dl	 # _56
	setne	%bl	 #, _57
	movl	%ecx, %eax	 # _52, _52
	andl	$7, %eax	 #, _52
	cmpb	%dl, %al	 # _56, _59
	setge	%al	 #, _60
	andl	%ebx, %eax	 # _57, _61
	orb	-149(%ebp), %al	 # %sfp, _62
	testb	%al, %al	 # _62
	je	L39	 #,
	movl	$8, 4(%esp)	 #,
	movl	-148(%ebp), %eax	 # %sfp, _41
	movl	%eax, (%esp)	 # _41,
	call	___asan_report_load_n	 #
L39:
	movl	-144(%ebp), %eax	 # %sfp, _17
	movl	4(%eax), %edx	 # *_17,
	movl	(%eax), %eax	 # *_17, tmp174
	movl	-140(%ebp), %ebx	 # %sfp, tmp168
	movl	%eax, -64(%ebx)	 # tmp174, block
	movl	%edx, -60(%ebx)	 #, block
	cmpl	$0, -128(%ebp)	 #, found_ptr
	je	L40	 #,
	call	_BK_LOCATION	 #
	movl	%eax, %edx	 #, _20
	movl	-124(%ebp), %eax	 # i, i.17_21
	addl	$536870911, %eax	 #, _22
	sall	$3, %eax	 #, _23
	addl	%edx, %eax	 # _20, _24
	movl	%eax, -144(%ebp)	 # _24, %sfp
	movl	%eax, %ebx	 # _24, _63
	movl	%ebx, -148(%ebp)	 # _63, %sfp
	movl	%ebx, %eax	 # _63, _64
	shrl	$3, %eax	 #, _64
	addl	$536870912, %eax	 #, _65
	movzbl	(%eax), %edx	 # *_66, _67
	testb	%dl, %dl	 # _67
	setne	%cl	 #, _68
	movl	%ebx, %eax	 # _63, _69
	andl	$7, %eax	 #, _69
	cmpb	%dl, %al	 # _67, _70
	setge	%al	 #, _71
	andl	%eax, %ecx	 # _71, _68
	movb	%cl, -149(%ebp)	 # _68, %sfp
	movl	$8, %eax	 #, tmp175
	subl	$1, %eax	 #, _73
	leal	(%ebx,%eax), %ecx	 #, _74
	movl	%ecx, %eax	 # _74, _75
	shrl	$3, %eax	 #, _75
	addl	$536870912, %eax	 #, _76
	movzbl	(%eax), %edx	 # *_77, _78
	testb	%dl, %dl	 # _78
	setne	%bl	 #, _79
	movl	%ecx, %eax	 # _74, _74
	andl	$7, %eax	 #, _74
	cmpb	%dl, %al	 # _78, _81
	setge	%al	 #, _82
	andl	%ebx, %eax	 # _79, _83
	orb	-149(%ebp), %al	 # %sfp, _84
	testb	%al, %al	 # _84
	je	L41	 #,
	movl	$8, 4(%esp)	 #,
	movl	-148(%ebp), %eax	 # %sfp, _63
	movl	%eax, (%esp)	 # _63,
	call	___asan_report_store_n	 #
L41:
	movl	-140(%ebp), %eax	 # %sfp, tmp168
	movl	-60(%eax), %edx	 # block,
	movl	-64(%eax), %eax	 # block, tmp176
	movl	-144(%ebp), %ecx	 # %sfp, _24
	movl	%eax, (%ecx)	 # tmp176, *_24
	movl	%edx, 4(%ecx)	 #, *_24
L40:
	movl	-140(%ebp), %eax	 # %sfp, tmp168
	movl	-64(%eax), %eax	 # block.start, _26
	cmpl	8(%ebp), %eax	 # ptr_to_free, _26
	jne	L42	 #,
	movl	$1, -128(%ebp)	 #, found_ptr
L42:
	addl	$1, -124(%ebp)	 #, i
L38:
	call	_COUNT_LOCATION	 #
	movl	%eax, -144(%ebp)	 # _11, %sfp
	movl	%eax, %ecx	 # _11, _85
	movl	%ecx, %eax	 # _85, _86
	shrl	$3, %eax	 #, _86
	addl	$536870912, %eax	 #, _87
	movzbl	(%eax), %edx	 # *_88, _89
	testb	%dl, %dl	 # _89
	setne	%bl	 #, _90
	movl	%ecx, %eax	 # _85, _91
	andl	$7, %eax	 #, _91
	addl	$3, %eax	 #, _93
	cmpb	%dl, %al	 # _89, _93
	setge	%al	 #, _94
	andl	%ebx, %eax	 # _90, _95
	testb	%al, %al	 # _95
	je	L43	 #,
	movl	%ecx, (%esp)	 # _85,
	call	___asan_report_load4	 #
L43:
	movl	-144(%ebp), %eax	 # %sfp, _11
	movl	(%eax), %eax	 # *_11, _12
	cmpl	-124(%ebp), %eax	 # i, _12
	jg	L44	 #,
	cmpl	$0, -128(%ebp)	 #, found_ptr
	je	L45	 #,
	call	_COUNT_LOCATION	 #
	movl	%eax, %edx	 #, _32
	movl	%edx, %ecx	 # _32, _96
	movl	%ecx, %eax	 # _96, _97
	shrl	$3, %eax	 #, _97
	addl	$536870912, %eax	 #, _98
	movzbl	(%eax), %ebx	 # *_99, _100
	testb	%bl, %bl	 # _100
	setne	-140(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _96, _102
	andl	$7, %eax	 #, _102
	addl	$3, %eax	 #, _104
	cmpb	%bl, %al	 # _100, _104
	setge	%al	 #, _105
	andb	-140(%ebp), %al	 # %sfp, _106
	testb	%al, %al	 # _106
	je	L46	 #,
	movl	%ecx, (%esp)	 # _96,
	call	___asan_report_load4	 #
L46:
	movl	(%edx), %eax	 # *_32, _33
	subl	$1, %eax	 #, _34
	movl	%eax, (%edx)	 # _34, *_32
	jmp	L37	 #
L45:
	movl	$LC5, (%esp)	 #,
	call	_printf	 #
	nop
L37:
	cmpl	%edi, -156(%ebp)	 # tmp169, %sfp
	je	L35	 #,
	movl	$1172321806, (%edi)	 #,
	movl	$-168430091, 536870912(%esi)	 #,
	movl	$-168430091, 536870916(%esi)	 #,
	movl	$-168430091, 536870920(%esi)	 #,
	jmp	L36	 #
L35:
	movl	$0, 536870912(%esi)	 #,
	movl	$0, 536870916(%esi)	 #,
	movl	$0, 536870920(%esi)	 #,
L36:
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
LFE17:
	.section .rdata,"dr"
	.align 32
LC6:
	.ascii "\12number of allocations: %d\12\0"
	.space 36
	.align 32
LC7:
	.ascii "%d to %d: [\0"
	.space 52
	.align 32
LC8:
	.ascii "%d,\0"
	.space 60
	.align 32
LC9:
	.ascii "]\0"
	.space 62
	.text
	.globl	_print_allocations
	.def	_print_allocations;	.scl	2;	.type	32;	.endef
_print_allocations:
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
	leal	-120(%ebp), %esi	 #, tmp163
	movl	%esi, -152(%ebp)	 # tmp163, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L48	 #,
	movl	$96, (%esp)	 #,
	call	___asan_stack_malloc_1	 #
	testl	%eax, %eax	 #
	je	L48	 #,
	movl	%eax, %esi	 #, tmp163
L48:
	leal	96(%esi), %eax	 #, tmp165
	movl	%eax, -140(%ebp)	 # tmp165, %sfp
	movl	$1102416563, (%esi)	 #,
	movl	$LC4, 4(%esi)	 #,
	movl	$LASANPC18, 8(%esi)	 #,
	movl	%esi, %ebx	 # tmp163, tmp166
	shrl	$3, %ebx	 #, tmp166
	movl	$-235802127, 536870912(%ebx)	 #,
	movl	$-185273344, 536870916(%ebx)	 #,
	movl	$-202116109, 536870920(%ebx)	 #,
	call	_COUNT_LOCATION	 #
	movl	%eax, %edi	 #, _7
	movl	%edi, %ecx	 # _7, _45
	movl	%ecx, %eax	 # _45, _46
	shrl	$3, %eax	 #, _46
	addl	$536870912, %eax	 #, _47
	movzbl	(%eax), %edx	 # *_48, _49
	testb	%dl, %dl	 # _49
	setne	-144(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _45, _51
	andl	$7, %eax	 #, _51
	addl	$3, %eax	 #, _53
	cmpb	%dl, %al	 # _49, _53
	setge	%al	 #, _54
	andb	-144(%ebp), %al	 # %sfp, _55
	testb	%al, %al	 # _55
	je	L52	 #,
	movl	%ecx, (%esp)	 # _45,
	call	___asan_report_load4	 #
L52:
	movl	(%edi), %eax	 # *_7, _8
	movl	%eax, 4(%esp)	 # _8,
	movl	$LC6, (%esp)	 #,
	call	_printf	 #
	movl	$0, -136(%ebp)	 #, i
	jmp	L53	 #
L59:
	call	_BK_LOCATION	 #
	movl	%eax, %edx	 #, _15
	movl	-136(%ebp), %eax	 # i, i.18_16
	sall	$3, %eax	 #, _17
	addl	%edx, %eax	 # _15, _18
	movl	%eax, -144(%ebp)	 # _18, %sfp
	movl	%eax, %edi	 # _18, _56
	movl	%edi, %eax	 # _56, _57
	shrl	$3, %eax	 #, _57
	addl	$536870912, %eax	 #, _58
	movzbl	(%eax), %edx	 # *_59, _60
	testb	%dl, %dl	 # _60
	setne	%cl	 #, _61
	movl	%edi, %eax	 # _56, _62
	andl	$7, %eax	 #, _62
	cmpb	%dl, %al	 # _60, _63
	setge	%al	 #, _64
	andl	%eax, %ecx	 # _64, _61
	movb	%cl, -145(%ebp)	 # _61, %sfp
	movl	$8, %eax	 #, tmp167
	subl	$1, %eax	 #, _66
	leal	(%edi,%eax), %ecx	 #, _67
	movl	%ecx, %eax	 # _67, _68
	shrl	$3, %eax	 #, _68
	addl	$536870912, %eax	 #, _69
	movzbl	(%eax), %edx	 # *_70, _71
	testb	%dl, %dl	 # _71
	setne	-146(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _67, _67
	andl	$7, %eax	 #, _67
	cmpb	%dl, %al	 # _71, _74
	setge	%al	 #, _75
	andb	-146(%ebp), %al	 # %sfp, _76
	orb	-145(%ebp), %al	 # %sfp, _77
	testb	%al, %al	 # _77
	je	L54	 #,
	movl	$8, 4(%esp)	 #,
	movl	%edi, (%esp)	 # _56,
	call	___asan_report_load_n	 #
L54:
	movl	-144(%ebp), %eax	 # %sfp, _18
	movl	4(%eax), %edx	 # *_18,
	movl	(%eax), %eax	 # *_18, tmp168
	movl	-140(%ebp), %edi	 # %sfp, tmp162
	movl	%eax, -64(%edi)	 # tmp168, block
	movl	%edx, -60(%edi)	 #, block
	movl	-64(%edi), %eax	 # block.start, _20
	movl	%eax, %edx	 # _20, _21
	movl	_HEAP_BASE, %eax	 # HEAP_BASE, HEAP_BASE.19_22
	subl	%eax, %edx	 # HEAP_BASE.20_23, _21
	movl	%edx, %eax	 # _21, _24
	sarl	$2, %eax	 #, tmp169
	movl	%eax, -128(%ebp)	 # tmp169, relative_start
	movl	-60(%edi), %eax	 # block.end, _26
	movl	%eax, %edx	 # _26, _27
	movl	_HEAP_BASE, %eax	 # HEAP_BASE, HEAP_BASE.21_28
	subl	%eax, %edx	 # HEAP_BASE.22_29, _27
	movl	%edx, %eax	 # _27, _30
	sarl	$2, %eax	 #, tmp170
	movl	%eax, -124(%ebp)	 # tmp170, relative_end
	movl	-124(%ebp), %eax	 # relative_end, tmp171
	movl	%eax, 8(%esp)	 # tmp171,
	movl	-128(%ebp), %eax	 # relative_start, tmp172
	movl	%eax, 4(%esp)	 # tmp172,
	movl	$LC7, (%esp)	 #,
	call	_printf	 #
	movl	-64(%edi), %eax	 # block.start, tmp173
	movl	%eax, -132(%ebp)	 # tmp173, location
	jmp	L55	 #
L57:
	movl	-132(%ebp), %edx	 # location, _78
	movl	%edx, %eax	 # _78, _79
	shrl	$3, %eax	 #, _79
	addl	$536870912, %eax	 #, _80
	movzbl	(%eax), %ecx	 # *_81, _82
	testb	%cl, %cl	 # _82
	setne	-144(%ebp)	 #, %sfp
	movl	%edx, %eax	 # _78, _84
	andl	$7, %eax	 #, _84
	addl	$3, %eax	 #, _86
	cmpb	%cl, %al	 # _82, _86
	setge	%al	 #, _87
	andb	-144(%ebp), %al	 # %sfp, _88
	testb	%al, %al	 # _88
	je	L56	 #,
	movl	%edx, (%esp)	 # _78,
	call	___asan_report_load4	 #
L56:
	movl	-132(%ebp), %eax	 # location, tmp174
	movl	(%eax), %eax	 # *location_2, _35
	movl	%eax, 4(%esp)	 # _35,
	movl	$LC8, (%esp)	 #,
	call	_printf	 #
	addl	$4, -132(%ebp)	 #, location
L55:
	movl	-140(%ebp), %eax	 # %sfp, tmp162
	movl	-60(%eax), %eax	 # block.end, _34
	cmpl	-132(%ebp), %eax	 # location, _34
	ja	L57	 #,
	movl	$LC9, (%esp)	 #,
	call	_puts	 #
	addl	$1, -136(%ebp)	 #, i
L53:
	call	_COUNT_LOCATION	 #
	movl	%eax, %edi	 #, _12
	movl	%edi, %ecx	 # _12, _89
	movl	%ecx, %eax	 # _89, _90
	shrl	$3, %eax	 #, _90
	addl	$536870912, %eax	 #, _91
	movzbl	(%eax), %edx	 # *_92, _93
	testb	%dl, %dl	 # _93
	setne	-144(%ebp)	 #, %sfp
	movl	%ecx, %eax	 # _89, _95
	andl	$7, %eax	 #, _95
	addl	$3, %eax	 #, _97
	cmpb	%dl, %al	 # _93, _97
	setge	%al	 #, _98
	andb	-144(%ebp), %al	 # %sfp, _99
	testb	%al, %al	 # _99
	je	L58	 #,
	movl	%ecx, (%esp)	 # _89,
	call	___asan_report_load4	 #
L58:
	movl	(%edi), %eax	 # *_12, _13
	cmpl	-136(%ebp), %eax	 # i, _13
	jg	L59	 #,
	nop
	cmpl	%esi, -152(%ebp)	 # tmp163, %sfp
	je	L49	 #,
	movl	$1172321806, (%esi)	 #,
	movl	$-168430091, 536870912(%ebx)	 #,
	movl	$-168430091, 536870916(%ebx)	 #,
	movl	$-168430091, 536870920(%ebx)	 #,
	jmp	L50	 #
L49:
	movl	$0, 536870912(%ebx)	 #,
	movl	$0, 536870916(%ebx)	 #,
	movl	$0, 536870920(%ebx)	 #,
L50:
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
	.def	___asan_stack_malloc_2;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC10:
	.ascii "3 32 12 4 arr2 96 16 4 arr1 160 16 4 arr3 \0"
	.def	___main;	.scl	2;	.type	32;	.endef
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
	subl	$272, %esp	 #,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	48(%esp), %edi	 #, tmp90
	movl	%edi, 28(%esp)	 # tmp90, %sfp
	cmpl	$0, ___asan_option_detect_stack_use_after_return	 #, __asan_option_detect_stack_use_after_return
	je	L60	 #,
	movl	$224, (%esp)	 #,
	call	___asan_stack_malloc_2	 #
	testl	%eax, %eax	 #
	je	L60	 #,
	movl	%eax, %edi	 #, tmp90
L60:
	leal	224(%edi), %eax	 #, tmp92
	movl	%eax, %esi	 # tmp92, tmp89
	movl	$1102416563, (%edi)	 #,
	movl	$LC10, 4(%edi)	 #,
	movl	$LASANPC19, 8(%edi)	 #,
	movl	%edi, %ebx	 # tmp90, tmp93
	shrl	$3, %ebx	 #, tmp93
	movl	$-235802127, 536870912(%ebx)	 #,
	movl	$-185334784, 536870916(%ebx)	 #,
	movl	$-218959118, 536870920(%ebx)	 #,
	movl	$-185335808, 536870924(%ebx)	 #,
	movl	$-218959118, 536870928(%ebx)	 #,
	movl	$-185335808, 536870932(%ebx)	 #,
	movl	$-202116109, 536870936(%ebx)	 #,
	call	___main	 #
	movl	$10000, (%esp)	 #,
	call	_malloc	 #
	movl	%eax, _HEAP_BASE	 # _3, HEAP_BASE
	movl	$4, -128(%esi)	 #, arr1
	movl	$5, -124(%esi)	 #, arr1
	movl	$7, -120(%esi)	 #, arr1
	movl	$9, -116(%esi)	 #, arr1
	movl	$4, 4(%esp)	 #,
	leal	-128(%esi), %eax	 #, tmp102
	movl	%eax, (%esp)	 # tmp102,
	call	_my_malloc	 #
	movl	%eax, 44(%esp)	 # tmp103, ptr
	movl	$13, -192(%esi)	 #, arr2
	movl	$17, -188(%esi)	 #, arr2
	movl	$20, -184(%esi)	 #, arr2
	movl	$3, 4(%esp)	 #,
	leal	-192(%esi), %eax	 #, tmp104
	movl	%eax, (%esp)	 # tmp104,
	call	_my_malloc	 #
	movl	44(%esp), %eax	 # ptr, tmp105
	movl	%eax, (%esp)	 # tmp105,
	call	_my_free	 #
	movl	$40, -64(%esi)	 #, arr3
	movl	$100, -60(%esi)	 #, arr3
	movl	$2023, -56(%esi)	 #, arr3
	movl	$400, -52(%esi)	 #, arr3
	movl	$4, 4(%esp)	 #,
	leal	-64(%esi), %eax	 #, tmp106
	movl	%eax, (%esp)	 # tmp106,
	call	_my_malloc	 #
	call	_print_allocations	 #
	movl	$0, %eax	 #, _25
	movl	%eax, %esi	 # _25, <retval>
	cmpl	%edi, 28(%esp)	 # tmp90, %sfp
	je	L61	 #,
	movl	$1172321806, (%edi)	 #,
	movl	$-168430091, 536870912(%ebx)	 #,
	movl	$-168430091, 536870916(%ebx)	 #,
	movl	$-168430091, 536870920(%ebx)	 #,
	movl	$-168430091, 536870924(%ebx)	 #,
	movl	$-168430091, 536870928(%ebx)	 #,
	movl	$-168430091, 536870932(%ebx)	 #,
	movl	$-168430091, 536870936(%ebx)	 #,
	jmp	L62	 #
L61:
	leal	536870912(%ebx), %eax	 #, tmp94
	movl	$28, %ecx	 #, tmp95
	movl	$0, %ebx	 #, tmp96
	movl	%ebx, (%eax)	 # tmp96,
	movl	%ebx, -4(%eax,%ecx)	 # tmp96,
	leal	4(%eax), %edx	 #, tmp97
	andl	$-4, %edx	 #, tmp97
	subl	%edx, %eax	 # tmp97, tmp94
	addl	%eax, %ecx	 # tmp94, tmp95
	andl	$-4, %ecx	 #, tmp95
	andl	$-4, %ecx	 #, tmp99
	movl	$0, %eax	 #, tmp98
L63:
	movl	%ebx, (%edx,%eax)	 # tmp96,
	addl	$4, %eax	 #, tmp98
	cmpl	%ecx, %eax	 # tmp99, tmp98
	jb	L63	 #,
	addl	%eax, %edx	 # tmp98, tmp97
L62:
	movl	%esi, %eax	 # <retval>,
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
LC11:
	.ascii "allocator.c\0"
	.data
	.align 4
LASANLOC1:
 # __filename:
	.long	LC11
 # __line:
	.long	36
 # __column:
	.long	5
	.align 4
LASANLOC2:
 # __filename:
	.long	LC11
 # __line:
	.long	35
 # __column:
	.long	5
	.section .rdata,"dr"
LC12:
	.ascii "N_ALLOCATE_LIMIT\0"
LC13:
	.ascii "N_ELEMENTS_LIMIT\0"
LC14:
	.ascii "*LC9\0"
LC15:
	.ascii "*LC3\0"
LC16:
	.ascii "*LC2\0"
LC17:
	.ascii "*LC8\0"
LC18:
	.ascii "*LC7\0"
LC19:
	.ascii "*LC5\0"
LC20:
	.ascii "*LC1\0"
LC21:
	.ascii "*LC6\0"
	.data
	.align 32
LASAN0:
 # __beg:
	.long	_N_ALLOCATE_LIMIT
 # __size:
	.long	4
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC12
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	LASANLOC1
 # __beg:
	.long	_N_ELEMENTS_LIMIT
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
	.long	LASANLOC2
 # __beg:
	.long	LC9
 # __size:
	.long	2
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
	.long	LC3
 # __size:
	.long	13
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
	.long	LC2
 # __size:
	.long	12
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
	.long	LC8
 # __size:
	.long	4
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
	.long	LC7
 # __size:
	.long	12
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
 # __beg:
	.long	LC5
 # __size:
	.long	29
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC19
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC1
 # __size:
	.long	34
 # __size_with_redzone:
	.long	96
 # __name:
	.long	LC20
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
 # __beg:
	.long	LC6
 # __size:
	.long	28
 # __size_with_redzone:
	.long	64
 # __name:
	.long	LC21
 # __module_name:
	.long	LC11
 # __has_dynamic_init:
	.long	0
 # __location:
	.long	0
	.text
	.def	__GLOBAL__sub_D_00099_0_N_ELEMENTS_LIMIT;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_D_00099_0_N_ELEMENTS_LIMIT:
LFB20:
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	 #,
	.cfi_def_cfa_register 5
	subl	$24, %esp	 #,
	movl	$10, 4(%esp)	 #,
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
	.long	__GLOBAL__sub_D_00099_0_N_ELEMENTS_LIMIT
	.text
	.def	__GLOBAL__sub_I_00099_1_N_ELEMENTS_LIMIT;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I_00099_1_N_ELEMENTS_LIMIT:
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
	movl	$10, 4(%esp)	 #,
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
	.long	__GLOBAL__sub_I_00099_1_N_ELEMENTS_LIMIT
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	___asan_report_load4;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	___asan_report_store4;	.scl	2;	.type	32;	.endef
	.def	___asan_report_store_n;	.scl	2;	.type	32;	.endef
	.def	___asan_report_load_n;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	___asan_unregister_globals;	.scl	2;	.type	32;	.endef
	.def	___asan_init;	.scl	2;	.type	32;	.endef
	.def	___asan_version_mismatch_check_v6;	.scl	2;	.type	32;	.endef
	.def	___asan_register_globals;	.scl	2;	.type	32;	.endef
