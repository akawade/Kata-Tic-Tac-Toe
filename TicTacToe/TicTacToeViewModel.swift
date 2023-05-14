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
}
