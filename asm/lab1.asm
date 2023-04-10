.model flat, c
.code

; Lab 1.1 | Option 8

lab1 proc

	push ebp
	mov ebp, esp
	
	mov eax, [ebp + 8] 
	
	sub eax, 5
	imul eax
	shr eax, 2

	mov ebx, [ebp + 8]
	shl ebx, 1

	add eax, ebx

	pop ebp
	ret

lab1 endp
end