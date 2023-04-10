.model flat, c
.code

; Lab 1.3 | Option 8

lab3 proc

	push ebp
	mov ebp, esp
	
	mov eax, [ebp + 8]
	
	mov ebx, 1
	shl ebx, 8
	add ebx, 1
	shl ebx, 7
	
	or eax, ebx

	pop ebp
	ret

lab3 endp
end