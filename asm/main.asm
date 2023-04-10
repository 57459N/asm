; Программа складывающая два 32-разрядных числа
.386
.model flat, stdcall, c
.stack 4096

ExitProcess proto, dwExitCode:dword

.data

	age WORD 19

.code

main proc

		mov eax, DWORD PTR age
		add eax, 10
		add eax, -29


		invoke ExitProcess, 0

main endp

end main