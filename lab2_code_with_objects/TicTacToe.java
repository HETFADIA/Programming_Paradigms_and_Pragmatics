import java.util.Scanner;

public class TicTacToe {

    public static void main(String args[]) {

        int playsAgain = 1;
        while (playsAgain == 1) {
            TwoPlayers obj1 = new TwoPlayers();
            obj1.instructions();
            int game = obj1.getGameType();

            if (game == 1) {
                obj1.TwoPlayerGame();
            } else {
                ComputerPlayerGame obj2 = new ComputerPlayerGame();
                obj2.ComputerGame();
            }
            playsAgain = obj1.continues();

        }

    }

}