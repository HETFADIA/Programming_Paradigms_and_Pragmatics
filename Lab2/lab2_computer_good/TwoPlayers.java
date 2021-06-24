package Lab2.lab2_computer_good;
import java.util.Scanner;

public class TwoPlayers {
    public static void printrow(String a, String b, String c) {
        System.out.println("\t" + a + "\t|\t" + b + "\t|\t" + c);
    }

    static void instructions() {
        System.out.println("Welcome to Tic Tac Toe.");
        System.out.println("The board is as follows");
        for (int i = 1; i <= 9; i += 3) {
            printrow(Integer.toString(i), Integer.toString(i + 1), Integer.toString(i + 2));
        }
        System.out.println("There are two versions in this game");
        System.out.println("Version 1: Player plays against another player(Two players)");
        System.out.println("Version 2: Player plays against computer");
        System.out.println("Enter 1 to play version 1 and 2 to play version 2");
        System.out.print("Enter version which you want to play:");
    }

    public static int continues() {
        Scanner sc = new Scanner(System.in);
        System.out.print("New game [Y/N]? : ");
        char ch = sc.next().charAt(0);
        if (ch == 'Y' || ch == 'y') {
            return 1;
        } else {
            return 0;
        }
    }

    public static int getGameType() {
        Scanner sc = new Scanner(System.in);
        return sc.nextInt();
    }

    public static String get_char(int a) {
        if (a == 0) {
            return " ";
        } else if (a == 1) {
            return "X";
        }
        return "O";
    }

    public static void printarr(int[] arr) {
        for (int i = 1; i <= 9; i += 3) {
            String a = get_char(arr[i]);
            String b = get_char(arr[i + 1]);
            String c = get_char(arr[i + 2]);
            printrow(a, b, c);
        }
    }

    public static int anyOneWon(int[] arr) {
        if (arr[1] == arr[5] && arr[5] == arr[9] && arr[5] != 0) {
            return arr[5];
        }
        if (arr[3] == arr[5] && arr[5] == arr[7] && arr[5] != 0) {
            return arr[5];
        }
        for (int i = 1; i <= 9; i += 3) {
            if (arr[i] == arr[i + 1] && arr[i + 1] == arr[i + 2] && arr[i] != 0) {
                return arr[i];
            }
        }
        for (int i = 1; i <= 3; i++) {
            if (arr[i] == arr[i + 3] && arr[i + 3] == arr[i + 6] && arr[i] != 0) {
                return arr[i];
            }
        }

        return 0;
    }

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
            printarr(arr);
            a = anyOneWon(arr);
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
