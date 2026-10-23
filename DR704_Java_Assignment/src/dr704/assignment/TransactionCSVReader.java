package dr704.assignment;

import java.io.File;
import java.util.Scanner;

public class TransactionCSVReader {

	public static void main(String[] args) throws Exception {
		
		Scanner sc=new Scanner(new File("transaction.csv"));
		
		sc.nextLine();
		
		while (sc.hasNextLine()) {
			String line = sc.nextLine();
			String[] data = line.split(",");
			
			int id = Integer.parseInt(data[0]);
			double amount = Double.parseDouble(data[1]);
			
			if (amount > 0) {
			System.out.println(id + " - VALID");
		} else {
			System.out.println(id + " - INVALID");
		}
			
			}
		
		sc.close();

	}

}
