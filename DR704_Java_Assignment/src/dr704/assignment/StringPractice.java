package dr704.assignment;

public class StringPractice {

	public static void main(String[] args) {
		
		// Question 1: Print the length of a full name.
		
		String fullname = "Ankush Sharma";
		
		System.out.println("Print the length of a full name.");
		System.out.println("Full Name: " + fullname);
		System.out.println("Length: " + fullname.length());
		
		// Question 2: Check whether a string contains Java.
		
		String text = "I am learning Java";
		
		System.out.println("Check whether a string contains Java.");
		if (text.contains("Java")) {
			System.out.println("The string contains Java");
		} else {
			System.out.println("The string does not contain Java");
		}

	}

}
