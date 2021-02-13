import java.util.Scanner;

public class ComputerPlayerGame {
    public static void ComputerGame() {
        Scanner sc = new Scanner(System.in);
        int[] arr = new int[10];
        int counter = 0;
        int turn = 1;// 1 for player and 2 for computer;
        int a = 0;
        while (counter < 9) {
            if (turn == 1) {
                System.out.print("Your turn . Enter the desired location [1-9] : ");
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
            } else {
                int index = 0;
                for (int i = 1; i <= 9; i++) {
                    if (arr[i] == 0) {
                        index = i;
                        break;
                    }
                }
                System.out.println("The computer chooses location " + index);
                arr[index] = 2;
            }
            Ancestor.printMatrix(arr);
            a = Ancestor.anyOneWon(arr);
            if (a == 1) {
                System.out.println("You win!!!");
                break;
            }
            if (a == 2) {
                System.out.println("The Computer wins!!!");
                break;
            }
            counter++;
            turn = (turn + 1) % 2;
        }
        if (a == 0) {
            System.out.println("It is a tie!");
        }
    }
}
