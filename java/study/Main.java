import java.util.*;

public class Main
{
  public static void main(String[] args)
  {
    LinkedBoy<String> lb = new LinkedBoy<String>();
    
    lb.add("BOY");
    lb.add("2");
    lb.next();
    System.out.println(lb.getData());
  }
}
