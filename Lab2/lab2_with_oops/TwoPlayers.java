package Lab2.lab2_with_oops;
import java.util.Scanner;

public class TwoPlayers {
    public static void TwoPlayerGame() {
        Scanner sc = new Scanner(System.in);
        int[] arr = new int[10];
        int counter = 0;
        int a = 0;
        while (counter < 9) {
            int turn = counter % 2 + 1;

            if (turn == 1) {
                System.out.print("Player 1's turn. Enter the desired location [1-9] : ");
                int index = sc.nextInt();
                if (index < 1 || index > 9) {
                    System.out.println("Please choose a number between 1 and 9 (both inclusive) only");
                    continue;
                }
                if (arr[index] == 1 || arr[index] == 2) {
                    System.out.println("This location is already occupied. Please choose another location");
                    continue;
                }
                arr[index] = 1;
            } else if (turn == 2) {
                System.out.print("Player 2's turn. Enter the desired location [1-9] : ");
                int index = sc.nextInt();
                if (index < 1 || index > 9) {
                    System.out.println("Please choose a number between 1 and 9 (both inclusive) only");
                    continue;
                }
                if (arr[index] == 1 || arr[index] == 2) {
                    System.out.println("This location is already occupied. Please choose another location");
                    continue;
                }
                arr[index] = 2;
            }
            Ancestor.printMatrix(arr);
            a = Ancestor.anyOneWon(arr);
            if (a == 1) {
                System.out.println("Player 1 has won!!!");
                break;
            }
            if (a == 2) {
                System.out.println("Player 2 has won!!!");
                break;
            }
            counter++;

        }
        if (a == 0) {
            System.out.println("It is a tie!!!");
        }

    }
}
