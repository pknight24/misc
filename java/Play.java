import java.util.*;

public class Play
{
  public static void shit(int x)
  {
    System.out.println(x * x);
  }

  public static void shit(String s)
  {
    System.out.println(s);
  }
   
  public static void main(String args[])
  {
      int[] nums = new int[10];
      nums[0] = 15;
      System.out.println(nums.length);
      shit(3);
      shit("Parker");
  }


}
