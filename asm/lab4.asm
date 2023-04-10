.model flat, c
.code

; Lab 2.1 | Option 8

lab4 proc

	push ebp
	mov ebp, esp
	
	mov eax, [ebp + 8]
	mov ebx, [ebp + 12]
	mov ecx, [ebp + 16]
	mov edx, [ebp + 20]
	
	cmp ecx, edx
	ja endif1

	xchg ecx, edx

endif1:

	cmp eax, ecx
	ja endif2

	xchg eax, ecx

endif2:

	cmp ebx, eax
	ja endif3

	xchg ebx, eax

endif3:




cmp ecx, edx
	ja endif4

	xchg ecx, edx

endif4:

	cmp eax, ecx
	ja endif5

	xchg eax, ecx

endif5:




cmp ecx, edx
	ja endif6

	xchg ecx, edx

endif6:


	pop ebp
	ret

lab4 endp
end