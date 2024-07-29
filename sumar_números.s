.text
main:

    li a7, 5
    ecall
    mv t0, a0 # Mostrar que t0 es un registro temporal. De t0 a t6
    li a7, 5
    ecall
    mv t1, a0

    jal ra, sumar
    li a7, 1
    ecall

    # Salir del programa
    li a7, 10  # Código de syscall para salir
    ecall  # Realiza la llamada al sistema para salir

sumar:  # Función para sumar
    add a0, t0, t1
    jr ra  # Regresa al punto de llamada