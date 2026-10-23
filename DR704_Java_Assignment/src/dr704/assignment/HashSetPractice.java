package dr704.assignment;

import java.util.HashSet;

public class HashSetPractice {

	public static void main(String[] args) {
		
		// Question 1: Add and print five cities.
		HashSet<String> cities = new HashSet<String>();
		
		cities.add("Mumbai");
		cities.add("Pune");
		cities.add("Gujarat");
		cities.add("Surat");
		cities.add("Ahmedabad");
		
		System.out.println("Add and print five cities.");
		System.out.println(cities);
		
		// Question 2: Add a duplicate city and print the set again.
		cities.add("Mumbai");
		
		System.out.println("Add a duplicate city and print the set again.");
		System.out.println(cities);

	}

}
