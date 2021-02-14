README


How to run my program:
First compile the program using the following commands
1)  javac TicTacToe.java
2)  java TicTacToe
First the program will ask you to input 1 or 2 to play the following games
1. 1 for playing two player game
2. 2 for playing player vs computer game
Enter 1 or 2 according to the game which you want to play.
Two player Game:
1. In this game the first player will get symbol X and the second player will get symbol Y
2. In this game the program will ask the player whose turn is there to enter a desired location where he wants to mark X or O according to the symbol he has got.
3. Similarly it will ask the next player to mark his desired location on the board
4. After the player enters the number the program will show board describing the marked locations
5. The program will keep on asking until any one player has won or the board is fully filled(there is tie)
6. When any one has won the game it will display message that the player has won 
7. Also if there is tie it will display that there is tie
8. After that the program will terminate and the program will ask whether you want to play new game or not
9. In the new game again the program will ask you which game to be played
Computer player game:
1. In this game the player will be using symbol X and the computer will be using symbol O
2. First the player will choose a location and then the board will be displayed
3. Then the computer will choose another location and then the board will be displayed.
4. When the computer or the player wins the program will terminate and the program will show who won
5. Also if there is a tie then the program will terminate and the program will show that it is a draw
6. Then the program will ask you if you want to play new game or not
About the Computer Player Game:
The computer makes the move using the following strategy
1. If there is winning position for the computer then it takes that move
2. If the player is winning the the computer selects that location that blocks the winning position
3. If neither of the above are true then it checks if the middle of the board is empty and selects it
4. If it is not empty then it selects location to two adjacent locations of the player.
About my program:
I have submitted three files and their corresponding classes
1. TicTacToe.java
2. ComputerPlayerGame.java
3. TwoPlayers.java
TicTacToe contains the main class