

section	.text
global  _func

_func:
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD [ebp+8]	;address of *a to eax
	mov	BYTE [eax], 'r'		;a[0]='w'
	mov	eax, [ebp+8]			;return 0
	pop	ebp
	ret

;============================================
; THE STACK
;============================================
;
; larger addresses
; 
;  |                               |
;  | ...                           |
;  ---------------------------------
;  | function parameter - char *a  | EBP+8
;  ---------------------------------
;  | return address                | EBP+4
;  ---------------------------------
;  | saved ebp                     | EBP, ESP
;  ---------------------------------
;  | ... here local variables      | EBP-x
;  |     when needed               |
;
; \/                              \/
; \/ the stack grows in this      \/
; \/ direction                    \/
;
; lower addresses
;
;
;============================================
