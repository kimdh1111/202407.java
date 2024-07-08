package java0708;

import java.util.Scanner;

public class ScannerEx {
	public static void main(String[] args) throws Exception{
		Scanner scan = new Scanner(System.in);
		
		System.out.print(">>");
		String str = scan.nextLine();
		
		System.out.println(str);
	}
}
