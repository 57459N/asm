.model flat, c

.data

	arr1 DWORD 1, 2, 3, 4
	arr2 DWORD 1, 3, 4, 5

	s1 DWORD 4
	s2 DWORD 4

.code 
lab9 proc
	
	push esp
	push ebp

	mov ebp, esp

	mov ecx, s1
	sub ecx, 1

outer_loop:
	mov eax, [arr1 + 4 * ecx]

	push ecx
	mov ecx, s2
	sub ecx, 1
	inner_loop:
		mov ebx, [arr2 + 4 * ecx]
		cmp eax, ebx
		je end_of_inner_loop

		loop inner_loop

	mov edx, eax

	end_of_inner_loop:

	pop ecx

	loop outer_loop	

	mov eax, edx

	pop ebp
	pop esp
	ret


lab9 endp
end