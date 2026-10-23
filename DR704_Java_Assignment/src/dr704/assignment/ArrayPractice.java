package dr704.assignment;

public class ArrayPractice {

	public static void main(String[] args) {
		
		// Question 1: Store five numbers in an array and print them.
		
		int[] numbers = {10, 20, 30, 40, 50};
		
		System.out.println("Store five numbers in an array and print them.");
		
		for (int i = 0; i < numbers.length; i++) {
		System.out.println(numbers[i]);

	}
		
		// Question 2 : Find the largest number in the array.
		
		int[] values = {10, 30, 40, 60, 50};
		int largest = values[0];
		
		for (int i = 1; i < values.length; i++) {
			if (values[i] > largest) {
				largest = values[i];
			}
		}
		
		System.out.println("Find the largest number in the array.");
		System.out.println("Largest Number: " + largest);
}
	
}

