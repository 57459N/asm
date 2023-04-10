.model flat, c

.data

	arr1 DWORD 1, 2, 3, 4
	arr2 DWORD 1, 3, 4, 5

	s1 DWORD 4
	s2 DWORD 4

.code 
lab10 proc
	
	push esp
	push ebp

	mov ebp, esp

	



	pop ebp
	pop esp
	ret


lab9 endp
end