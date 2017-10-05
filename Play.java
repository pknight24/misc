import java.util.*;

public class Play
{

   
  public static void main(String args[])
  {
    Scanner scan = new Scanner(System.in);
    try
    {
      int x = scan.nextInt();
      if (x == 0)
        throw new RuntimeException("Big Mistake pal!");
      assert (x % 2 == 0) : "Odd numbers are bad";
    }    
    catch (RuntimeException e)
    {
      System.out.println(e.getMessage());
    }
    catch (java.lang.AssertionError e)
    {
      System.out.println(e.getMessage());
    }
   double a = 2.564;
   int y = 1 + (int) a; 
   System.out.println(y);
  }


}
