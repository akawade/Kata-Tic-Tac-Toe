//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Avinash Kawade on 14/05/23.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {
    let mockViewModel = MockDataViewModel()
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_initBoardCells() throws {
        //Arrange
        let ticTacToeVModel = TicTacToeViewModel(cells: mockViewModel.initBoardData(), isTestRun: true)
        //Act
      
        //ticTacToeVModel.initBoardCells(cells: <#T##[UIButton]#>)
        
        //Assert
        XCTAssertEqual(ticTacToeVModel.board.count, 9)
    }

    func test_checkAllBoardCellNotMarked() throws {
        //Arrange
        let ticTacToeVModel = TicTacToeViewModel(cells: mockViewModel.allBoardNotMarkedMock(), isTestRun: true)
        
        //Assert
        XCTAssertFalse(ticTacToeVModel.checkBoardCellNotMarked())
   }
    
    func test_checkIfAllCellsMarked(){
        //Arrange
        let ticTacToeVModel = TicTacToeViewModel(cells: mockViewModel.allCellsMarkedMock(), isTestRun: true)
        
        //Assert
        XCTAssertTrue(ticTacToeVModel.checkIfAllCellsMarked())
    }
 
    func test_checkRowsFullyMarkedForWinner(){
        //Arrange
        let ticTacToeVModel = TicTacToeViewModel(cells: mockViewModel.rowsFullyMarkedForWinnerMockData(), isTestRun: true)
      
        //Assert
        XCTAssertTrue(ticTacToeVModel.checkRowsFullyMarkedForWinner())
    }
   
    func test_checkColumnsMarkedForWinner() {
        //Arrange
        let ticTacToeVModel = TicTacToeViewModel(cells: mockViewModel.columnsMarkedForWinnerMocData(), isTestRun: true)
        
        //Assert
        XCTAssertTrue(ticTacToeVModel.checkColumnsMarkedForWinner())
    }

    func test_checkDiagonalyMarkedForWinner(){
        //Arrange
        let ticTacToeVModel = TicTacToeViewModel(cells: mockViewModel.diagonalyMarkedForWinnerMockData(), isTestRun: true)
        
        //Assert
        XCTAssertTrue(ticTacToeVModel.checkDiagonalyMarkedForWinner())
    }
}
