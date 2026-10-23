package dr704.assignment;

import java.util.Scanner;

public class TransactionMethod {
	
	public static String validatetransaction(double amount) {
		
		if (amount > 0) {
			return "VALID";
		} else {
			return "INVALID";
		}
		
	}
	
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		
		System.out.println("Enter Transaction Amount: ");
		double amount = sc.nextDouble();
		
		String result = validatetransaction(amount);
		
		System.out.println("Transaction Result: " + result);
		
		sc.close();
		
	}

}
