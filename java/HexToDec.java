public class HexToDec
{

    public static long getCharValue(char c, int p)
    {
        //gets the value of char and takes it to the appropriate power
        long charValue;
        switch (c)
        {
            case 'a':
            case 'A':
                charValue = 10 * ((long) Math.pow(16, p));
                break;
            case 'b':
            case 'B':
                charValue = 11 * ((long) Math.pow(16, p));
                break;
            case 'c':
            case 'C':
                charValue = 12 * ((long) Math.pow(16, p));
                break;
            case 'd':
            case 'D':
                charValue = 13 * ((long) Math.pow(16, p));
                break;
            case 'e':
            case 'E':
                charValue = 14 * ((long) Math.pow(16, p));
                break;
            case 'f':
            case 'F':
                charValue = 15 * ((long) Math.pow(16, p));
                break;
            default:
                charValue = Character.getNumericValue(c) * ((long) Math.pow(16, p));

        }
        return charValue;
    }

    public static long getHexTotal(String hexNumber)
    {
        long sum = 0;

        if (hexNumber.charAt(0) == '0' && hexNumber.charAt(1) == 'x')
            hexNumber = hexNumber.substring(2, hexNumber.length());

        int lastIndex = hexNumber.length() - 1;

        for (int i = 0; i <= lastIndex; i++)
        {
            int power = lastIndex - i;
            sum += getCharValue(hexNumber.toCharArray()[i], power);

        }
        return sum;
    }

    public static void main(String args[])
    {
        String hexNum = args[0];

        System.out.println(getHexTotal(hexNum));

    }
}
