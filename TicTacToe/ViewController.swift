//
//  ViewController.swift
//  TicTacToe
//
//  Created by Avinash Kawade on 14/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var a1Btn: UIButton!
    @IBOutlet weak var a2Btn: UIButton!
    @IBOutlet weak var a3Btn: UIButton!
    
    @IBOutlet weak var b1Btn: UIButton!
    @IBOutlet weak var b2Btn: UIButton!
    @IBOutlet weak var b3Btn: UIButton!
    
    @IBOutlet weak var c1Btn: UIButton!
    @IBOutlet weak var c2Btn: UIButton!
    @IBOutlet weak var c3Btn: UIButton!
    
    var viewModel: TicTacToeViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let cells = [a1Btn,a2Btn,a3Btn,
                     b1Btn,b2Btn,b3Btn,
                     c1Btn,c2Btn,c3Btn]
        let cellsArray = cells.compactMap { $0 }
       viewModel = TicTacToeViewModel(cells: cellsArray)

    }
}

