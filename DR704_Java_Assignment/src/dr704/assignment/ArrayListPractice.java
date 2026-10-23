package dr704.assignment;

import java.util.ArrayList;

public class ArrayListPractice {

	public static void main(String[] args) {
		
		// Question 1: Add and print five student names.
		ArrayList<String> students = new ArrayList<String>();
		
		students.add("Ravi");
		students.add("Manish");
		students.add("Jignesh");
		students.add("Mihir");
		students.add("Vedant");
		
		System.out.println("Add and print five student names.");
		System.out.println(students);
		
		// Question 2: Remove one name and print the updated list.
		students.remove("Vedant");
		
		System.out.println("Remove one name and print the updated list.");
		System.out.println(students);
		
	}

}
