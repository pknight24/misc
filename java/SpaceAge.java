import java.util.*;

public class SpaceAge
{

  public static void main(String args[])
  {
    Scanner scan = new Scanner(System.in);
    System.out.print("How old are you?: ");
    int age = scan.nextInt();
    double ageOnMercury = age * 0.241;
    double ageOnVenus = age * 0.6152;
    double ageOnMars = age * 1.8808;
    System.out.println("You are " + ageOnVenus + " years old on Venus!");
    System.out.println("You are " + ageOnMercury + " years old on Mercury!");
    System.out.println("You are " +  ageOnMars + " years old on Mars!");
  
  }

}
