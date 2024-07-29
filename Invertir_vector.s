.data
    v1: .byte 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
    v2: .zero 10

.text
main:
    la t0, v1  # int t0[] = v1;
    la t1, v2  # int t1[] = v2;
    
    li t2, 0  # int t2 = 0;
    li t3, 10 # int t3 = 10;
    
    addi t1, t1, 9 # t1 apunta al último elemento

for:
    beq t2, t3, end # if (t2 == t3) -> end
    
    lb t4, 0(t0) # t4 = v1[t2=0];
    sb t4, 0(t1) # v2[t1=9] = t4;
    addi t1, t1, -1 # j--;
    addi t0, t0, 1  # i++;
    
    addi t2, t2, 1
    j for
    
end:
    li a7, 10
    ecall
