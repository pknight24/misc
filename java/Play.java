import java.util.*;

public class Play
{
  
  public static void main(String args[])
  {
    Deque<String> songs = new LinkedList<String>();
    songs.add("Song 1");
    songs.push("Song 2");
    songs.add("Song 3")
      ;
    songs.push("Song 4");

    System.out.println(songs.pop());
    System.out.println(songs.removeLast());
    System.out.println(songs.pop());
    System.out.println(songs.remove());
  }


}
