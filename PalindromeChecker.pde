public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true )
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
   if(reverse(word).equals(noCapitals(onlyLetters(word)))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
   String sNew = new String();
  int bot = str.length()-1;
  for(int i=bot; i>=0; i--)
  {
    sNew = sNew+str.substring(i,i+1);
    sNew= noCapitals(onlyLetters(sNew));
  }
    return sNew;
}
public String onlyLetters(String sString){
    String d="";
  for(int i = 0; i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))==true){
      d=d+sString.substring(i,i+1);
    }}
      return d;
  }
 public String noCapitals(String sWord){
  return sWord.toLowerCase();
  }
