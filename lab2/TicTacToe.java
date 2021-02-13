import java.util.Scanner;

public class TicTacToe {
    static void instructions() {
        System.out.println("Welcome to Tic Tac Toe.");
        System.out.println("The board is as follows");
        System.out.println("\t1\t|\t2\t|\t3");
        System.out.println("\t4\t|\t5\t|\t6");
        System.out.println("\t7\t|\t8\t|\t9");
        System.out.println("There are two versions in this game");
        System.out.println("Version 1: Player plays against another player(Two players)");
        System.out.println("Version 2: Player plays against computer");
        System.out.println("Enter 1 to play version 1 and 2 to play version 2");
        System.out.print("Enter version which you want to play:");

    }

    public static String get_char(int a) {
        if (a == 0) {
            return " ";
        } else if (a == 1) {
            return "X";
        }
        return "O";
    }

    public static void printrow(String a, String b, String c) {
        System.out.println("\t" + a + "\t|\t" + b + "\t|\t" + c);
    }

    public static void printMatrix(int[] arr) {
        for (int i = 1; i <= 9; i += 3) {
            String a = get_char(arr[i]);
            String b = get_char(arr[i + 1]);
            String c = get_char(arr[i + 2]);
            printrow(a, b, c);
        }
    }

    public static int anyOneWon(int[] arr) {
        for (int i = 1; i <= 9; i += 3) {
            if (arr[i] == arr[i + 1] && arr[i + 1] == arr[i + 2]) {
                return arr[i];
            }
        }
        for (int i = 1; i <= 3; i++) {
            if (arr[i] == arr[i + 3] && arr[i + 3] == arr[i + 6]) {
                return arr[i];
            }
        }
        if (arr[1] == arr[5] && arr[5] == arr[9]) {
            return arr[1];
        }
        if (arr[3] == arr[5] && arr[5] == arr[7]) {
            return arr[3];
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
            printMatrix(arr);
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
            printMatrix(arr);
            a = anyOneWon(arr);
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

    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);

        int playsAgain = 1;
        while (playsAgain == 1) {
            instructions();
            int game = sc.nextInt();

            if (game == 1) {
                TwoPlayerGame();
            } else {
                ComputerGame();
            }
            System.out.print("New game [Y/N]? : ");
            char ch = sc.next().charAt(0);
            if (ch == 'Y' || ch == 'y') {
                playsAgain = 1;
            } else {
                playsAgain = 0;
                break;
            }
        }

    }

}
