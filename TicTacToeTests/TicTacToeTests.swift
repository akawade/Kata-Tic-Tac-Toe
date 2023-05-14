//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Avinash Kawade on 14/05/23.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_initBoardCells() throws {
        //Arrange
        let ticTacToeVModel = TicTacToeViewModel()
        //Act
        
        //Assert
        XCTAssertEqual(ticTacToeVModel.board.count, 9)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
