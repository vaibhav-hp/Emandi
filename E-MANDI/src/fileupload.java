import java.io.*;
class fileupload 
{
	static BufferedReader r=new BufferedReader(new InputStreamReader(System.in));
	static String[] a=new String[20];
	static String n=new String();
	static String[] a1=new String[20];
	public static void main(String[] args) throws IOException
	{
		read();
	}
	public static void read()throws IOException{

System.out.println("Enter a String");
for(int i=0;i<5;i++)
a[i]=r.readLine();
System.out.println("Would you like to enter another String?(y/n)");
n=r.readLine();
int l=n.length();
int j=n.length();
int flag=0;
for(int i=0;j<l/2;i++,j--)
if(n.charAt(i)==n.charAt(j))
	flag++;
if(flag==(l/2))
	System.out.println("The string is a palindrome");
else
System.out.println("The string is not a palindrome");
do{
if(n.equals("y"))
	read();
else if(n.equals("n"))
	break;
}while(true);
	}
}

	

