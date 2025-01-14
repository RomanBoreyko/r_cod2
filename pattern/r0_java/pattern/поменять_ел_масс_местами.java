new String[] {arr[2], arr[1], arr[0]};

//

import java.util.Collections;
import java.util.Arrays;

public class WrongEndHead {
  public static String[] fixTheMeerkat(String[] arr) {
    String[] copy = arr.clone();
    Collections.reverse(Arrays.asList(copy));
    return copy;
  }
}

//

