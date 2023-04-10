.model flat, c

.data 
	
	digit_counter DWORD 0

.code

; Lab 2.4 | Option 8

lab7 proc

	push ebp
	mov ebp, esp
	
	mov eax, [ebp + 8]
	mov ecx, 9
	mov ebx, 10	
	
outer_loop_start:

	

	mov digit_counter, 0
	mov eax, [ebp + 8] ; eax = number

	inner_loop_start:

			cmp eax, 0
			je inner_loop_end ; while eax > 0
			
			mov edx, 0
			div ebx ; edx = eax % 10; eax /= 10

			cmp edx, ecx
			jne inner_loop_start 

			inc digit_counter ; if eax % 10 == current digit (ecx) : ++counter

			mov edx, [ebp + 12]
			cmp digit_counter, edx
			jle inner_loop_start ; if digit_counter > k : return 1

			mov eax, 1
			pop ebp
			ret

	inner_loop_end:
	
	dec ecx
	
	cmp ecx, 0
	jge outer_loop_start ; while ecx >= 0

outer_loop_end:
	
	mov eax, 0

	pop ebp
	ret

lab7 endp
end