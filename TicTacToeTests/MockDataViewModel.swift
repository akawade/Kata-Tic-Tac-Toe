//
//  MockDataViewModel.swift
//  TicTacToeTests
//
//  Created by Avinash Kawade on 15/05/23.
//

import Foundation
import UIKit
@testable import TicTacToe

struct MockDataViewModel{
    var initBoardData = {
                     [Cell(),Cell(),Cell(),
                     Cell(),Cell(),Cell(),
                     Cell(),Cell(),Cell()]
    }
    
//    var allBoardNotMarked = {
//        let a1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
//        a1.setTitle("X", for: .normal)
//        let a2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
//        a2.setTitle("O", for: .normal)
//        let a3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
//        a3.setTitle("X", for: .normal)
//
//         [a1,a2,a3,
//         Cell(),Cell(),Cell(),
//         Cell(),Cell(),Cell()]
//    }
    func allBoardNotMarkedMock() -> [Cell]{
        let a1 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a1.setTitle("X", for: .normal)
        let a2 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a2.setTitle("O", for: .normal)
        let a3 =  Cell(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        a3.setTitle("X", for: .normal)

         return [a1,a2,a3,
         Cell(),Cell(),Cell(),
         Cell(),Cell(),Cell()]
    }
    
    func allCellsMarkedMock() -> [Cell]{
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
        return [a1,a2,a3,
                     b1,b2,b3,
                     c1,c2,c3]
    }
    
    func rowsFullyMarkedForWinnerMockData() -> [Cell]{
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
        return [a1,a2,a3,
                     b1,b2,b3,
                     c1,c2,c3]
    }
    
    func columnsMarkedForWinnerMocData() -> [Cell]{
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
        return [a1,a2,a3,
                     b1,b2,b3,
                     c1,c2,c3]
    }
    func diagonalyMarkedForWinnerMockData()-> [Cell]{
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
        return [a1,a2,a3,
                     b1,b2,b3,
                     c1,c2,c3]
    }
}
