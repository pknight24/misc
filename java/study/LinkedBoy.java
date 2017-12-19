import java.util.*;

public class LinkedBoy<T> 
{
  private Node<T> first = null, last = null, current = null;

  public void add(T data)
  {
    Node<T> newboy = new Node(data);
    if (first == null)
      first = last = current = newboy;
    else
    {
      last.next = newboy;
      last = newboy;
    }
  }

  public T remove()
  {
    Node<T> remove = first;

    if (current == first) current = current.next;
    if (last == first) last = last.next;
    
    first = first.next;
    return remove.data;
  }

  public T getData()
  {
    return current.data;
  }

  public void next()
  {
    current = current.next;
  }

  public void reset()
  {
    current = first;
  }

  public boolean isEmpty()
  {
    return first == null;
  }

  public boolean isEnd()
  {
    return current == null;
  }
}
