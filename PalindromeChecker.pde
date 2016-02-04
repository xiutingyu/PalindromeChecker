public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2=noCapitals(word);
  String word3=noSpaces(word2);
  String word4=onlyLetters(word3);
  if (word4.equals(reverse(word4)))
  return true;//your code here
else  
  return false;

  
}

public String reverse (String word)
{
  String sWord = new String ();
  for (int i=word.length()-1; i>=0; i--)
  sWord=sWord+word.substring(i,i+1);
  return sWord;
}

public String noSpaces(String word)
{
  String result = new String ();
    for(int i=0; i<word.length(); i++)
      if (!word.substring(i,i+1).equals(" "))
      result=result+word.substring(i, i+1);
    return result;
}

public String noCapitals(String word)
{
  return word.toLowerCase();
}

public String onlyLetters(String word)
{
   String sWord3 = new String();
  for(int i = 0; i < word.length(); i++)
    if(Character.isLetter(word.charAt(i)) == true)
      sWord3 = sWord3 + word.charAt(i);
    return sWord3;
}