.model flat, c

.code

; Lab 3.1 | Option 8

lab8 proc 

	push ebp  
	push edi  
	push esp
	push esi

	mov ecx, [esp + 20] ; counter of loop (len of array)
	mov esi, [esp + 24] ; array adress
	
	mov edi, 0 ; sum = 0
	mov ebx, 3 ; num 3
	mov ebp, 5 ; num 5

sum_loop:
	dec ecx
	jl end_loop

	mov eax, [esi + 4 * ecx]
	mov edx, 0
	cdq
	idiv ebx
	test edx, edx
	jne sum_loop

	mov eax, [esi + 4 * ecx]
	mov edx, 0
	cdq
	idiv ebp
	test edx, edx
	jne sum_loop

	add edi, [esi + 4 * ecx]

	jmp sum_loop

end_loop:

	mov eax, edi
	
	pop esi
	pop esp
	pop edi
	pop ebp
	ret

lab8 endp
end