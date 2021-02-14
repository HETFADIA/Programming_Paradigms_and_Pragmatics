import java.util.Scanner;

public class ComputerPlayerGame {
    public static void printrow(String a, String b, String c) {
        System.out.println("\t" + a + "\t|\t" + b + "\t|\t" + c);
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
            return arr[1];
        }
        if (arr[3] == arr[5] && arr[5] == arr[7] && arr[5] != 0) {
            return arr[3];
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

    public static int anyTwoAreSame(int[] arr, int a, int b, int c) {
        if (arr[a] == arr[b] && arr[a] == 2 && arr[c] == 0) {
            return c;
        }
        if (arr[b] == arr[c] && arr[b] == 2 && arr[a] == 0) {
            return a;
        }
        if (arr[a] == arr[c] && arr[c] == 2 && arr[b] == 0) {
            return b;
        }
        return 0;
    }

    public static int anyTwoOpponentSame(int[] arr, int a, int b, int c) {
        if (arr[a] == arr[b] && arr[a] == 1 && arr[c] == 0) {
            return c;
        }
        if (arr[b] == arr[c] && arr[b] == 1 && arr[a] == 0) {
            return a;
        }
        if (arr[a] == arr[c] && arr[c] == 1 && arr[b] == 0) {
            return b;
        }
        return 0;
    }

    public static int winIndex(int[] arr) {
        if (anyTwoAreSame(arr, 1, 5, 9) != 0) {
            return anyTwoAreSame(arr, 1, 5, 9);
        }
        if (anyTwoAreSame(arr, 3, 5, 7) != 0) {
            return anyTwoAreSame(arr, 3, 5, 7);
        }
        for (int i = 1; i <= 9; i += 3) {
            if (anyTwoAreSame(arr, i, i + 1, i + 2) != 0) {
                return anyTwoAreSame(arr, i, i + 1, i + 2);
            }
        }
        for (int i = 1; i <= 3; i += 1) {
            if (anyTwoAreSame(arr, i, i + 3, i + 6) != 0) {
                return anyTwoAreSame(arr, i, i + 3, i + 6);
            }
        }
        return 0;

    }

    public static int loseIndex(int[] arr) {
        if (anyTwoOpponentSame(arr, 1, 5, 9) != 0) {
            return anyTwoOpponentSame(arr, 1, 5, 9);
        }
        if (anyTwoOpponentSame(arr, 3, 5, 7) != 0) {
            return anyTwoOpponentSame(arr, 3, 5, 7);
        }
        for (int i = 1; i <= 9; i += 3) {
            if (anyTwoOpponentSame(arr, i, i + 1, i + 2) != 0) {
                return anyTwoOpponentSame(arr, i, i + 1, i + 2);
            }
        }
        for (int i = 1; i <= 3; i += 1) {
            if (anyTwoOpponentSame(arr, i, i + 3, i + 6) != 0) {
                return anyTwoOpponentSame(arr, i, i + 3, i + 6);
            }
        }
        return 0;

    }

    public static int get_best_index(int[] arr) {
        if (winIndex(arr) != 0) {
            return winIndex(arr);
        }
        return 0;
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
                if (winIndex(arr) != 0) {
                    index = winIndex(arr);
                } else if (loseIndex(arr) != 0) {
                    index = loseIndex(arr);
                } else if (arr[5] == 0) {
                    index = 5;
                } else if (arr[1] == 0) {
                    index = 1;
                } else if (arr[3] == 0) {
                    index = 3;
                } else if (arr[7] == 0) {
                    index = 7;
                } else if (arr[9] == 0) {
                    index = 9;
                } else {

                    for (int i = 1; i <= 9; i++) {
                        if (arr[i] == 0) {
                            index = i;
                            break;
                        }
                    }
                }

                System.out.println("The computer chooses location " + index);
                arr[index] = 2;
            }
            printarr(arr);
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
}
