//
//  ViewController.swift
//  TicTacToe
//
//  Created by Avinash Kawade on 14/05/23.
//

import UIKit

class ViewController: UIViewController {

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
       // cellsArray.forEach{print("Cell Title -> \(String(describing: $0.title(for: .normal)))")}

       viewModel = TicTacToeViewModel(cells: cellsArray)
       viewModel?.board.forEach{print("Cell Title -> \(String(describing: $0.title(for: .normal)))")}

    }
    @IBAction func markCellAction(_ sender: UIButton) {
//        viewModel?.checkBoardCellNotMarked()
//        print("Board Not blank === \(viewModel?.checkBoardCellNotMarked())")
        sender.setTitle("X", for: .normal)
        sender.isEnabled = false
        //check X is Winner
        if viewModel?.checkRowsFullyMarkedForWinner() == true {
            //check O is Winner
            self.showMessageToUser(title: "WinnerR", msg: "We have a winner")
        }else if viewModel?.checkColumnsMarkedForWinner() == true  {
            self.showMessageToUser(title: "WinnerC", msg: "We have a winner")

        }else if viewModel?.checkDiagonalyMarkedForWinner() == true {
            self.showMessageToUser(title: "WinnerD", msg: "We have a winner")
        }else if viewModel?.checkIfAllCellsMarked() == true {
            //Draw
        }

       // print("Board All Marked === \(viewModel?.checkIfAllCellsMarked())")
    }
    func showMessageToUser(title: String, msg: String)  {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

