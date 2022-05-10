.text 
.global main
main:
	mov r1, #123 
	mov r2, #0 

loop:
	cmp r1, #1
	beq end // branch to end if r1 == 1

	and r3, r1, #1
	cmp r2, #0 
	bne odd // branch to odd if r3 != 0

even:
	mov r1, r1, ASR #1  // r1 <- (r1 >> 1)
	b end_loop 

odd:
	add r1, r1, r1, LSL #1  // r1 <- r1 + (r1 << 1)
	add r1, r1, #1 

end_loop:
	add r2, r2, #1 
	b loop 

end:
	mov r0, r2
	bx lr
