import java.util.Scanner;

public class SumarNumeros {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        int t0 = scanner.nextInt();
        int t1 = scanner.nextInt();
        int resultado = sumar(t0, t1);
        
        System.out.println(resultado);
        
        scanner.close();
    }
    
    // Función sumar
    public static int sumar(int t0, int t1) {
        return t0 + t1;
    }
}