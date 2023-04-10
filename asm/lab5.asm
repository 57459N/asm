.model flat, c
.code

; Lab 2.2 | Option 8

lab5 proc

	push ebp
	mov ebp, esp
	
	mov eax, [ebp + 8]
	mov ebx, [ebp + 12]
	mov ecx, [ebp + 16]
	mov edx, [ebp + 20]
	
	cmp eax, ecx ; k == m
	je eqline

	cmp ebx, edx ; l == n
	je eqline

	sub eax, ecx
	sub ebx, edx
	add eax, ebx

	bt eax, 15;
	jz endif1 ;
	neg eax   ; abs
			  ;
endif1:		  ;

	cmp eax, 3
	je knight

	cmp eax, 1
	je knight


	mov eax, 3
	jmp endf

eqline:
	mov eax, 1
	jmp endf

knight:
	mov eax, 2
	jmp endf


endf:
	
	pop ebp
	ret

lab5 endp
end