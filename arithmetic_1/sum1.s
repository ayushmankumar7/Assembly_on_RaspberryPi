.global main 

main:
	mov r1, #3
	mov r2, #4 
	add r0, r1, r2 /* Adds r1 and r2 and stores in r0 */
	bx lr
