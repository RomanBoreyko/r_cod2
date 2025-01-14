public class Kata
{
    public static int expressionsMatter(int a, int b, int c)
    {
        int[] rArr = {a*(b+c), a*b*c, a+b*c, (a+b)*c, a+b+c};
        int rMax = rArr[0];
        for (int i=0; i<rArr.length; i++)if(rMax < rArr[i])rMax = rArr[i];
        return rMax;
    }
}