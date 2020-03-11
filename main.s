	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	add
	.type	add, @function
add:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	edx, DWORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-8]
	add	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	add, .-add
	.globl	sub
	.type	sub, @function
sub:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	eax, DWORD PTR [rbp-8]
	sub	eax, DWORD PTR [rbp-4]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	sub, .-sub
	.section	.rodata
.LC0:
	.string	"Result"
.LC1:
	.string	"%s = %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR [rbp-4], 5
	mov	DWORD PTR [rbp-8], 6
	mov	edx, DWORD PTR [rbp-8]
	mov	eax, DWORD PTR [rbp-4]
	mov	esi, edx
	mov	edi, eax
	call	add
	mov	DWORD PTR [rbp-12], eax
	mov	edx, DWORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-8]
	mov	esi, edx
	mov	edi, eax
	call	sub
	mov	DWORD PTR [rbp-16], eax
	mov	edx, DWORD PTR [rbp-12]
	mov	eax, DWORD PTR [rbp-16]
	mov	esi, edx
	mov	edi, eax
	call	sub
	mov	DWORD PTR [rbp-20], eax
	mov	eax, DWORD PTR [rbp-20]
	mov	edx, eax
	mov	esi, OFFSET FLAT:.LC0
	mov	edi, OFFSET FLAT:.LC1
	mov	eax, 0
	call	printf
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
