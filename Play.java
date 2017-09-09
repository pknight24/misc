import java.util.*;

public class Play
{

  public static int factorial(int x)
  {
   if (x == 0)
    return 1;
   else
    return x * factorial(x-1); 
  }
  public static void main(String args[])
  {
    Scanner scan = new Scanner(System.in);
    System.out.print("Enter a number: ");
    int x = scan.nextInt();
    switch (x)
    {
      case (69):
        System.out.println("Fam why tho");
        break;
      default:
        int fact_x = factorial(x);
        System.out.println("Your number factorial is: " + fact_x);
        break;
    }
  }


}
