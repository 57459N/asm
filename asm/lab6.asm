.model flat, c
.code

; Lab 2.3 | Option 8

lab6 proc

	push ebp
	mov ebp, esp
	
	mov eax, 0
	mov ecx, [ebp + 8]

count_mult:
	add eax, ecx
	loop count_mult

	imul eax, [ebp + 12]
	
	pop ebp
	ret

lab6 endp
end