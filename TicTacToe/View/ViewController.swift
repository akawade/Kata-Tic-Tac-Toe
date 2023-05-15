//
//  ViewController.swift
//  TicTacToe
//
//  Created by Avinash Kawade on 14/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerTurn: UILabel!
    @IBOutlet weak var a1Btn: Cell!
    @IBOutlet weak var a2Btn: Cell!
    @IBOutlet weak var a3Btn: Cell!
    
    @IBOutlet weak var b1Btn: Cell!
    @IBOutlet weak var b2Btn: Cell!
    @IBOutlet weak var b3Btn: Cell!
    
    @IBOutlet weak var c1Btn: Cell!
    @IBOutlet weak var c2Btn: Cell!
    @IBOutlet weak var c3Btn: Cell!
    
    var viewModel: TicTacToeViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let cells = [a1Btn,a2Btn,a3Btn,
                     b1Btn,b2Btn,b3Btn,
                     c1Btn,c2Btn,c3Btn]
        let cellsArray = cells.compactMap { $0 }
        playerTurn.text = Constants.turnX
        viewModel = TicTacToeViewModel(cells: cellsArray)
        //viewModel?.board.forEach{print("Cell Title -> \(String(describing: $0.title(for: .normal)))")}
    }
    @IBAction func markCellAction(_ sender: UIButton) {
        if viewModel?.player == .X {
            viewModel?.player = .O
            playerTurn.text = Constants.turnO
            sender.setTitle("X", for: .normal)
        }else {
            viewModel?.player = .X
            playerTurn.text = Constants.turnX
            sender.setTitle("O", for: .normal)
        }
        sender.isEnabled = false
        if viewModel?.checkRowsFullyMarkedForWinner() == true {
            viewModel?.player = .X
            self.showMessageToUser(title: Constants.winner, msg: "\(Constants.alertWinnerMsg) \(winner)")
        }else if viewModel?.checkColumnsMarkedForWinner() == true  {
            viewModel?.player = .X
            self.showMessageToUser(title: Constants.winner, msg: "\(Constants.alertWinnerMsg) \(winner)")
        }else if viewModel?.checkDiagonalyMarkedForWinner() == true {
            viewModel?.player = .X
            self.showMessageToUser(title: Constants.winner, msg: "\(Constants.alertWinnerMsg) \(winner)")
        }else if viewModel?.checkIfAllCellsMarked() == true {
            //Draw
            viewModel?.player = .X
            self.showMessageToUser(title: Constants.draw, msg: Constants.alertNoWinnerMsg)
        }
}
    func showMessageToUser(title: String, msg: String)  {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {_ in
            self.playerTurn.text = Constants.turnX
            self.viewModel?.resetBoard()
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

