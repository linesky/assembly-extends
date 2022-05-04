.global main
main:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	ldr r0,var_hellos
	mov r1,#10
	blx	printf
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
var_hellos: .word var_hello
var_hello:    .asciz "hello world %d\0"

