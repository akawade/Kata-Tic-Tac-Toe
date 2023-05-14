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
        let cells = [Cell(),Cell(),Cell(),
                     Cell(),Cell(),Cell(),
                     Cell(),Cell(),Cell()]
        let ticTacToeVModel = TicTacToeViewModel(cells: cells)
        //Act
      
        //ticTacToeVModel.initBoardCells(cells: <#T##[UIButton]#>)
        
        //Assert
        XCTAssertEqual(ticTacToeVModel.board.count, 9)
    }

    func test_checkAllBoardCellNotMarked() throws {
        let a1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a1.setTitle("X", for: .normal)
        let a2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a2.setTitle("O", for: .normal)
        let a3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a3.setTitle("X", for: .normal)
//        print("A1 - \(a1.title(for: .normal))")
//        print("A2 - \(a2.title(for: .normal))")
//        print("A3 - \(a3.title(for: .normal))")

        let cells = [a1,a2,a3,
                     Cell(),Cell(),Cell(),
                     Cell(),Cell(),Cell()]
        let ticTacToeVModel = TicTacToeViewModel(cells: cells)
        
       // print("Empty Cells - \(ticTacToeVModel.board.count)")
        XCTAssertTrue(ticTacToeVModel.checkBoardCellNotMarked())
   }
    
    func test_checkIfAllCellsMarked(){
        let a1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a1.setTitle("X", for: .normal)
        let a2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a2.setTitle("O", for: .normal)
        let a3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a3.setTitle("X", for: .normal)
        let b1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b1.setTitle("X", for: .normal)
        let b2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b2.setTitle("O", for: .normal)
        let b3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b3.setTitle("X", for: .normal)
        let c1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c1.setTitle("X", for: .normal)
        let c2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c2.setTitle("O", for: .normal)
        let c3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c3.setTitle("X", for: .normal)
        let cells = [a1,a2,a3,
                     b1,b2,b3,
                     c1,c2,c3]
        let ticTacToeVModel = TicTacToeViewModel(cells: cells)
        
        XCTAssertTrue(ticTacToeVModel.checkIfAllCellsMarked())
    }
 
    func test_checkRowsFullyMarkedForWinner(){
        let a1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a1.setTitle("X", for: .normal)
        a1.position = 1
        let a2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a2.setTitle("X", for: .normal)
        a2.position = 2
        let a3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a3.setTitle("O", for: .normal)
        a3.position = 3
        let b1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b1.setTitle("O", for: .normal)
        b1.position = 4
        let b2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b2.setTitle("O", for: .normal)
        b2.position = 5
        let b3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b3.setTitle("O", for: .normal)
        b3.position = 6
        let c1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c1.setTitle("O", for: .normal)
        c1.position = 7
        let c2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c2.setTitle("X", for: .normal)
        c2.position = 8
        let c3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c3.setTitle("X", for: .normal)
        c3.position = 9
        let cells = [a1,a2,a3,
                     b1,b2,b3,
                     c1,c2,c3]
        let ticTacToeVModel = TicTacToeViewModel(cells: cells)
        XCTAssertTrue(ticTacToeVModel.checkRowsFullyMarkedForWinner())
    }
   
    func test_checkColumnsMarkedForWinner() {
        let a1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a1.setTitle("X", for: .normal)
        a1.position = 1
        let a2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a2.setTitle("O", for: .normal)
        a2.position = 2
        let a3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a3.setTitle("O", for: .normal)
        a3.position = 3
        let b1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b1.setTitle("X", for: .normal)
        b1.position = 4
        let b2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b2.setTitle("O", for: .normal)
        b2.position = 5
        let b3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b3.setTitle("O", for: .normal)
        b3.position = 6
        let c1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c1.setTitle("X", for: .normal)
        c1.position = 7
        let c2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c2.setTitle("X", for: .normal)
        c2.position = 8
        let c3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c3.setTitle("X", for: .normal)
        c3.position = 9
        let cells = [a1,a2,a3,
                     b1,b2,b3,
                     c1,c2,c3]
        let ticTacToeVModel = TicTacToeViewModel(cells: cells)
        ticTacToeVModel.board.forEach{print("Cell Title -> \(String(describing: $0.title(for: .normal)))")}

        XCTAssertTrue(ticTacToeVModel.checkColumnsMarkedForWinner())
    }

    func test_checkDiagonalyMarkedForWinner(){
        let a1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a1.setTitle("X", for: .normal)
        a1.position = 1
        let a2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a2.setTitle("O", for: .normal)
        a2.position = 2
        let a3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a3.setTitle("O", for: .normal)
        a3.position = 3
        let b1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b1.setTitle("X", for: .normal)
        b1.position = 4
        let b2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b2.setTitle("O", for: .normal)
        b2.position = 5
        let b3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        b3.setTitle("O", for: .normal)
        b3.position = 6
        let c1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c1.setTitle("O", for: .normal)
        c1.position = 7
        let c2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c2.setTitle("O", for: .normal)
        c2.position = 8
        let c3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        c3.setTitle("O", for: .normal)
        c3.position = 9
        let cells = [a1,a2,a3,
                     b1,b2,b3,
                     c1,c2,c3]
        let ticTacToeVModel = TicTacToeViewModel(cells: cells)
        ticTacToeVModel.board.forEach{print("Cell Title -> \(String(describing: $0.title(for: .normal)))")}

        XCTAssertTrue(ticTacToeVModel.checkDiagonalyMarkedForWinner())
    }
}
