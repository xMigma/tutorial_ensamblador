import java.util.Scanner;

public class Fibonnacci {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt(); // t0

        int a = 0; // t1
        int b = 1;
        int iteration = 0;

        while (iteration < n) {
            int temp = b;
            b = a + b;
            a = temp;
            iteration++;
        }

        System.out.println(a);
        scanner.close();
    }
}

    

