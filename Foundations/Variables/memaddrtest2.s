	.set sysarch, _x64_
	.include "console.i"

	.text

	.entry main
main:
	GetInt	askm, month

	mov	rcx, month		#direct addressing
	sub	rcx, 1
	mov	rbx, offset year
	mov	rax, [rbx+8*rcx]	#indirection

	PutInt	tell

	ret

askm:	.string	"Month[1-12]: "
tell:	.string "Number of Days = "
year:	.quad	31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31

	.data

month:	.quad	0

	.end


