public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = onlyLetters(word);
  if(word2.equals(reverse(word2)))
  return true;
  else
  return false;
}

public String reverse(String word)
{
    String sNew = new String();
    for(int i=word.length()-1;i>=0;i--)
      sNew = sNew + word.substring(i,i+1);
    return sNew.toLowerCase();
}
public String onlyLetters(String word)
{
  String sNew = new String();
  for(int i=word.length()-1;i>=0;i--)
    if(Character.isLetter(word.charAt(i)) == true)
    sNew = sNew + word.substring(i,i+1);
    //System.out.println(sNew.toLowerCase());
  return sNew.toLowerCase();
}