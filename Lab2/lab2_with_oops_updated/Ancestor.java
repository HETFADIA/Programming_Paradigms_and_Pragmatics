package Lab2.lab2_with_oops_updated;
import java.util.Scanner;

public class Ancestor {
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

    public static void printMatrix(int[] arr) {
        for (int i = 1; i <= 9; i += 3) {
            String a = get_char(arr[i]);
            String b = get_char(arr[i + 1]);
            String c = get_char(arr[i + 2]);
            printrow(a, b, c);
        }
    }

    public static void printrow(String a, String b, String c) {
        System.out.println("\t" + a + "\t|\t" + b + "\t|\t" + c);
    }

    public static int anyOneWon(int[] arr) {
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
        if (arr[1] == arr[5] && arr[5] == arr[9] && arr[5] != 0) {
            return arr[1];
        }
        if (arr[3] == arr[5] && arr[5] == arr[7] && arr[5] != 0) {
            return arr[3];
        }
        return 0;
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
}
