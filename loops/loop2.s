.text 
.global main

main:
	mov r1, #0
	mov r2, #1 
	b check_loop 

loop:
	add r1, r1, r2
	add r2, r2, #1

check_loop:
	cmp r2, #22
	ble loop  // branch if r2 <=22 to the beginning of the loop 

end:
	mov r0, r1
	bx lr
