	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"magoc.c"
	.text
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d x \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #416
	add	r7, sp, #0
	ldr	r4, .L10
.LPIC0:
	add	r4, pc
	ldr	r3, .L10+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #412]
	mov	r2, r7
	movw	r3, #38528
	movt	r3, 152
	str	r3, [r2]
	adds	r3, r7, #4
	ands	r2, #0
	adds	r2, #2
	str	r2, [r3]
	add	r3, r7, #8
	ands	r2, #0
	str	r2, [r3]
	b	.L2
.L4:
	mov	r2, r7
	adds	r3, r7, #4
	ldr	r2, [r2]
	ldr	r1, [r3]
	mov	r0, r2
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	tst	r3, r3
	bne	.L3
	mov	r5, r7
	mov	r3, r7
	adds	r2, r7, #4
	ldr	r1, [r2]
	ldr	r0, [r3]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r5]
	add	r3, r7, #8
	ldr	r3, [r3]
	add	r2, r7, #8
	adds	r1, r3, #1
	str	r1, [r2]
	add	r2, r7, #12
	adds	r1, r7, #4
	ldr	r1, [r1]
	str	r1, [r2, r3, lsl #2]
	adds	r3, r7, #4
	adds	r2, r7, #4
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L2
.L3:
	adds	r3, r7, #4
	adds	r2, r7, #4
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	mov	r3, r7
	mov	r2, r7
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #8
	add	r2, r7, #8
	ldr	r2, [r2]
	str	r2, [r3]
.L2:
	mov	r3, r7
	ldr	r3, [r3]
	cmp	r3, #1
	bgt	.L4
	add	r3, r7, #8
	ldr	r3, [r3]
	tst	r3, r3
	bne	.L5
	add	r3, r7, #8
	ldr	r3, [r3]
	add	r2, r7, #8
	adds	r1, r3, #1
	str	r1, [r2]
	add	r2, r7, #12
	mov	r1, r7
	ldr	r1, [r1]
	str	r1, [r2, r3, lsl #2]
.L5:
	adds	r3, r7, #4
	ands	r2, #0
	str	r2, [r3]
	b	.L6
.L7:
	add	r3, r7, #12
	adds	r2, r7, #4
	ldr	r2, [r2]
	ldr	r3, [r3, r2, lsl #2]
	mov	r1, r3
	ldr	r3, .L10+8
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	adds	r3, r7, #4
	adds	r2, r7, #4
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L6:
	add	r3, r7, #8
	ldr	r3, [r3]
	subs	r3, r3, #1
	adds	r2, r7, #4
	ldr	r2, [r2]
	cmp	r2, r3
	blt	.L7
	add	r3, r7, #8
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3, r2, lsl #2]
	mov	r1, r3
	ldr	r3, .L10+12
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ands	r3, #0
	mov	r0, r3
	ldr	r3, .L10+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #412]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L9
	bl	__stack_chk_fail(PLT)
.L9:
	add	r7, r7, #416
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L11:
	.align	2
.L10:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
