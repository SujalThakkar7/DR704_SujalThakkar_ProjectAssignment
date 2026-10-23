package dr704.assignment;

import java.util.HashMap;

public class HashMapPractice {

	public static void main(String[] args) {
		// Question 1: Store five student IDs with names.
		HashMap<Integer, String> students = new HashMap<Integer, String>();
		
		students.put(1, "Manish");
		students.put(2, "Jignesh");
		students.put(3, "Vedant");
		students.put(4, "Ravi");
		students.put(5, "Krutik");
		
		System.out.println("Store five student IDs with names.");
		System.out.println(students);
		
		// Question 2: Look up and print the name for a given ID.
		int id = 3;
		
		System.out.println("Look up and print the name for a given ID.");
		System.out.println("Student ID: " + id);
		System.out.println("Student Name: " + students.get(id));
		
	}

}
