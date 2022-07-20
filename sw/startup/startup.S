
.section .startup_code
.global _start

_start:
    nop
	lui		sp, %hi(__estack)
	addi	sp,sp,%lo(__estack)
    jal     main
