.model flat, c
.code

; Lab 1.2 | Option 8

lab2 proc

	push ebp
	mov ebp, esp
	
	mov eax, [ebp + 8]
	mov ebx, [ebp + 12]
	mov ecx, [ebp + 16]
	mov edx, [ebp + 20]

	xor ecx, 1
	xor edx, 1
	
	or ecx, edx

	or eax, ebx

	and eax, ecx
	xor eax, 1

	pop ebp
	ret

lab2 endp
end