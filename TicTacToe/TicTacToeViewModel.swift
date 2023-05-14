//
//  TicTacToeViewModel.swift
//  TicTacToe
//
//  Created by Avinash Kawade on 14/05/23.
//

import Foundation
import UIKit

struct TicTacToeViewModel {
    
    var board = [UIButton]()
    
    init(cells: [UIButton]){
        board = cells
    }
    
    func checkBoardCellNotMarked() -> Bool {
        let emptyCells = board.filter{(($0).title(for: .normal) == "")}
        return emptyCells.count > 0
    }
    func checkIfAllCellsMarked() -> Bool{
        let markedCells = board.filter{(($0).title(for: .normal) != "")}
        return markedCells.count == 9
    }
    
    func checkRowsMarkedForWinner(){
        
    }
    func checkColumnsMarkedForWinner(){
        
    }
    
    func checkDiagonalyMarkedForWinner(){
        
    }
}
