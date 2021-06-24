package Lab2.lab2_with_oops;
import java.util.Scanner;

public class TicTacToe {

    public static void main(String args[]) {

        int playsAgain = 1;
        while (playsAgain == 1) {
            Ancestor.instructions();
            int game = Ancestor.getGameType();

            if (game == 1) {
                TwoPlayers.TwoPlayerGame();
            } else {
                ComputerPlayerGame.ComputerGame();
            }
            playsAgain = Ancestor.continues();

        }

    }

}