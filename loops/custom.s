.text
.global main	
main:
	mov r1, #0 
	mov r2, #1

loop:
	cmp r2, #22 
	bgt end
	mov r1, r2 
	add r2, r2, #1
	b loop 

end:
	mov r0, r1
	bx lr
