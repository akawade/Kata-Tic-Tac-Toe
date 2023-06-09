//
//  TicTacToeViewModel.swift
//  TicTacToe
//
//  Created by Avinash Kawade on 14/05/23.
//

import Foundation
import UIKit

class Cell : UIButton {
    var position: Int = 1
    var isMarked = true
}
enum Turn: String {
    case X = "X"
    case O = "O"
}
var winner: String = ""

struct TicTacToeViewModel {
    
    var board = [Cell]()
    var player: Turn = .X
    
    init(cells: [Cell] , isTestRun: Bool = false){
        board = cells
        if !isTestRun {board.forEach{$0.setTitle("", for: .normal)}}
    }
    
    func checkBoardCellNotMarked() -> Bool {
        let emptyCells = board.filter{(($0).title(for: .normal) == "")}
        return emptyCells.count > 0
    }
    
    func checkIfAllCellsMarked() -> Bool{
        let markedCells = board.filter{($0.title(for: .normal)) != "" }
        return markedCells.count == 9
    }
    
    func checkRowsFullyMarkedForWinner() -> Bool {
        if (((board[0].title(for: .normal) != "") && (board[0].title(for: .normal) == board[1].title(for: .normal)) && board[1].title(for: .normal) == board[2].title(for: .normal))){
            winner = board[0].title(for: .normal) ?? ""
            return true
        } else if ((board[3].title(for: .normal)  != "") && board[3].title(for: .normal) == board[4].title(for: .normal) && board[4].title(for: .normal) == board[5].title(for: .normal)){
            winner = board[3].title(for: .normal) ?? ""
            return true
        } else if ((board[6].title(for: .normal)  != "") && board[6].title(for: .normal) == board[7].title(for: .normal) && (board[7].title(for: .normal) == board[8].title(for: .normal))) {
            winner = board[6].title(for: .normal) ?? ""
            return true
        }
        return false
    }
    
    func checkColumnsMarkedForWinner() -> Bool{
        if (((board[0].title(for: .normal) != "") && (board[0].title(for: .normal) == board[3].title(for: .normal)) && board[3].title(for: .normal) == board[6].title(for: .normal))) {
            winner = board[0].title(for: .normal) ?? ""
            return true
        } else if ((board[1].title(for: .normal)  != "") && board[1].title(for: .normal) == board[4].title(for: .normal) && board[4].title(for: .normal) == board[7].title(for: .normal)){
            winner = board[1].title(for: .normal) ?? ""
            return true
        } else if ((board[2].title(for: .normal)  != "") && board[2].title(for: .normal) == board[5].title(for: .normal) && (board[5].title(for: .normal) == board[8].title(for: .normal))) {
            winner = board[2].title(for: .normal) ?? ""
            return true
        }
        return false
    }
    
    func checkDiagonalyMarkedForWinner()-> Bool{
        if (((board[0].title(for: .normal) != "") && (board[0].title(for: .normal) == board[4].title(for: .normal)) && board[4].title(for: .normal) == board[8].title(for: .normal))){
            winner = board[0].title(for: .normal) ?? ""
            return true
        }else if((board[2].title(for: .normal)  != "") && board[2].title(for: .normal) == board[4].title(for: .normal) && board[4].title(for: .normal) == board[6].title(for: .normal)) {
            winner = board[2].title(for: .normal) ?? ""
            return true
        }
        return false
    }
    
    func resetBoard(){
        board.forEach{
            $0.setTitle("", for: .normal)
            $0.isEnabled = true
        }
    }
}
