public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
	/*System.out.println();
		String[] Llines = loadStrings("LowellHymn.txt");
	System.out.println("there are " + Llines.length + " lines");
	for (int i = 0 ; i < Llines.length; i++) 
	{
	  System.out.println(pigLatin(Llines[i]));
	}*/
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int i=0;i<=sWord.length()-1;i++)
	{
		if(sWord.length()>0){
			 if (sWord.charAt(i)=='a'||sWord.charAt(i)=='e'||sWord.charAt(i)=='i'||sWord.charAt(i)=='o'||sWord.charAt(i)=='u')
				return i;
}
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{	

	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	 if(findFirstVowel(sWord)==0)
	return sWord+"way";
	else if(sWord.substring(0,2).equals("qu"))
	{
		sWord=sWord.substring(2,sWord.length());
	return sWord+"quay";
}
else if(findFirstVowel(sWord) != 0)
	{
	sWord=sWord+sWord.charAt(0);	
	sWord=sWord.substring(1,sWord.length());
return sWord+"ay";
		}
	else
	{
		return "ERROR!";
	}

}
