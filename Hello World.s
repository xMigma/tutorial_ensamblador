.data
	hello: .string "Hello world"
.text 
	main:
      # Decir que en ensamblador no existen las variables
      li a7 4 # llamar a print
      la a0 hello # pasar el argumento
      ecall # hacer la llamada
