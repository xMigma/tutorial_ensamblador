.text
main:
	li a7, 5
    ecall
    mv t0, a0
    li t1, 0 #a
    li t2, 1 #b
    li t3, 0 #iteración del for
    
    fibonacci:
    	beq t3 t0, end
        mv t4, t2
        add t2, t1, t2
        mv t1, t4
        addi t3, t3, 1
        j fibonacci
    
    end:
    mv a0, t1
    li a7, 1
    ecall
    li a7, 10
    ecall