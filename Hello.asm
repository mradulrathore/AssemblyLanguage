
section .data

	message1 db "Hello, World!",10
	message2 db "I am Mradul.",10

section .txt

	global _start
	_start:

		mov rax,1
		mov rdi,1
		mov rsi,message1
		mov rdx,14
		syscall

		mov rax,1
		mov rdi,1
		mov rsi,message2
		mov rdx,13

		syscall
		mov rax,60
		mov rdi,0
		syscall
