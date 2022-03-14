// T1RefactoringAppTests.swift by Gokhan Mutlu on 14.03.2022

import XCTest
@testable import T1RefactoringApp


class PrimeClassTests: XCTestCase {

	override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	
    func testPrimeCalculationSuccessful() throws {
        //Arrange
		let givenNumber = 110
		let expectedDividerArray:[Int] = [2,5,11]
		
		//Act
		let dividerArray = Prime.calc(givenNumber)
		
		//Assert
		XCTAssertEqual(dividerArray, expectedDividerArray, "Refactoring is NOT successful")
    }

	
	func testPrimeCalculationForAnyNumberLessThen1() throws {
		//Arrange
		var givenNumber = 1
		let expectedDividerArray:[Int] = []
		
		//Act & Assert - 1
		let dividerArray1 = Prime.calc(givenNumber)
		XCTAssertEqual(dividerArray1, expectedDividerArray, "Empty array expected for given number: \(givenNumber)")
		
		//Act & Assert - 2
		givenNumber = -10
		let dividerArray2 = Prime.calc(givenNumber)
		XCTAssertEqual(dividerArray2, expectedDividerArray, "Empty array expected for given number: \(givenNumber)")
	}
	
	
}
