package dr704.assignment;

import java.util.Scanner;

public class TransactionValidation {

	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		
		System.out.println("Enter Transaction ID: ");
		int transactionID = sc.nextInt();
		
		System.out.println("Enter Transaction Amount: ");
		double amount = sc.nextDouble();
		
		if (amount > 0) {
			System.out.println("Transaction ID: " + transactionID);
			System.out.println("Result: VALID");
		} else {
			System.out.println("Transaction ID: " + transactionID);
			System.out.println("Result: INVALID");
		}
		sc.close();
	}

}
