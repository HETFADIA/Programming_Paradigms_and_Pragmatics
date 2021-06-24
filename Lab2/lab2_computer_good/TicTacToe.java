package Lab2.lab2_computer_good;
import java.util.Scanner;

public class TicTacToe {

    public static void main(String args[]) {

        int playsAgain = 1;
        while (playsAgain == 1) {
            TwoPlayers.instructions();
            int game = TwoPlayers.getGameType();

            if (game == 1) {
                TwoPlayers.TwoPlayerGame();
            } else {
                ComputerPlayerGame.ComputerGame();
            }
            playsAgain = TwoPlayers.continues();

        }

    }

}