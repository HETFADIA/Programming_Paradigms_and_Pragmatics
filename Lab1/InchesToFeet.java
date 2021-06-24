package Lab1;
import java.util.Scanner;
public class InchesToFeet {
  public static void main(String[] args) {
    Scanner sc= new Scanner(System.in);
    int no=sc.nextInt();
    int X=no/12;
    int Y=no%12;
    //now X should be even;
    // so if X is odd we subtract 1 from it and add this to Y
    // if(X%2==0){
    //     X--;
    //     Y+=12;
    // }
    System.out.println(no+" inches = "+X+" feet, "+Y+" inches");
  }
}
