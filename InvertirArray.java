public class InvertirArray {
    public static void main(String[] args) {
        byte[] v1 = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
        byte[] v2 = new byte[10];

        int t0 = 0;
        int t1 = 9;

        int t2 = 0;
        int t3 = 10;

        // Bucle for
        while (t2 != t3) {
            v2[t1] = v1[t0];
            t1--;
            t0++;

            t2++;
        }

        System.out.println("Array invertido:");
        for (byte b : v2) {
            System.out.print(b + " ");
        }
    }
}