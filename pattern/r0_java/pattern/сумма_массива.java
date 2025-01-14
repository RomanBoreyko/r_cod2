for(int i=0; i<arr.length; i++)sum += arr[i];
for(int i : arr)sum += i;
//
import java.util.Arrays;
return (int) Arrays.stream(nums).average().getAsDouble();