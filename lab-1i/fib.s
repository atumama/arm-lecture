	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

        fibonacci:

		push {r3, r4, r5, lr}
		mov r3, #0 @sum ->r3
		mov r4, #1 @result ->r4
		sub r5, r3, #1 @previous -> r5
	for_loop:  @i=x; i>=0; i--
		add r3, r4, r5 
		mov r5, r4
		mov r4, r3
		subs r0, r0, #1
		ite ls              
		movls r0 ,r4   
		bhi for_loop 
		pop {r3, r4, r5, pc} 


	.size fibonacci, .-fibonacci
	.end
	
