//
//  VechicleFactoryTests.swift
//  Design_Me_For_Fun
//
//  Created by Akshay Kumar on 23/01/25.
//

import XCTest
@testable import Design_Me_For_Fun

final class VechicleFactoryTests: XCTestCase {
    let factory: VehcileFactory! = VehcileFactory()
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    func testCarCreation() {
        let type = factory.createVehicle(.car)
        let engineType = "1.2 Litre petrol"
        XCTAssertTrue(type is Car, "Expected a Car instance")
        XCTAssertEqual(type.numberofWheels, 4, "A car has 4 four wheels")
        XCTAssertEqual(type.engine, engineType, "Engine type should match input")

        
    }
    func testBikeCreation() {
        let type = factory.createVehicle(.bike)
        let engineType = "2 Stroke"
        XCTAssertTrue(type is Bike, "Expected a Car instance")
        XCTAssertEqual(type.numberofWheels, 2, "A car has 4 four wheels")
        XCTAssertEqual(type.engine, engineType, "Engine type should match input")
        
    }
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
