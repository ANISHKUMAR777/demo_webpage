package loginpage;

import java.util.Arrays;
import java.util.Scanner;

public class main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the number: ");
        String in[] = sc.nextLine().split("");

        int arr[] = Arrays.stream(in).mapToInt(Integer::parseInt).toArray();

        System.out.println("Enter the shift amount (k): ");
        int k = sc.nextInt() % arr.length;

        System.out.println("Rotated array:");
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[(i + k) % arr.length] + " ");
        }
    }
}

