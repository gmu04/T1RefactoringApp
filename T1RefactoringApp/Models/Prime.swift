// Prime.swift by Gokhan Mutlu on 14.03.2022

import Foundation


class Prime {
	
	/*
	static var val:Int = 0
	static var res:[Int] = []
	static var start: Int = 0
	
	public static func calc(_ num: Int) -> [Int] {
		val = num
		res = [Int]()
		start = 2
		
		while val > 1 {
			while (val % start) == 0 {
				res.append(start)
				val /= start
			}
			incrementStart()
		}
		return res
	}
	
	static func incrementStart() {
		start += 1
	}
 	*/
	
	
	/**
	 Returns the array of divider numbers of the given number.
	 - Parameter num: given number
	 - Returns: divider numbers array
	 
	 Edge cases:
	 - given number is required above 1
	 */
	static func calc(_ number: Int) -> [Int] {
		guard number > 1 else { return [] }

		var value = number
		var arrOfDividers = [Int]()
		var currentDivider = 2
		
		while value > 1 {
			if value % currentDivider == 0 {
				arrOfDividers.append(currentDivider)
				
				//loop termination statement
				value /= currentDivider
			}else{
				currentDivider += 1
			}
		}
		return arrOfDividers
	}
}
