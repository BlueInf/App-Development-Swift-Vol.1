//
//  ViewController.swift
//  RPS
//
//  Created by Krasimir Marinov on 8/18/17.
//  Copyright © 2017 Krasimir Marinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(info: .start)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var rockSign: UIButton!
    @IBOutlet weak var paperSign: UIButton!
    @IBOutlet weak var scissorsSign: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBAction func paperPressed(_ sender: Any) {
        play(pSign: .paper)
        updateUI(info: .end)
    }
    @IBAction func scissorsPressed(_ sender: UIButton) {
        play(pSign: .scissors)
        updateUI(info: .end)
    }
    @IBAction func rockPressed(_ sender: Any) {
        play(pSign: .rock)
        updateUI(info: .end)
    }
  
    @IBAction func tappedPlayAgain(_ sender: Any) {
        updateUI(info: .start)
    }
    enum gameState{
        case start,end
    }
    func updateUI(info:gameState){
        switch info{
        case.start:
            appSign.text="👽"
            paperSign.isHidden=false
            rockSign.isHidden=false
            scissorsSign.isHidden=false
            resultsLabel.text="Rock,Paper,Scissors?"
            playAgainButton.isHidden=true
        case.end:
            playAgainButton.isHidden=false
            
        }
    }
    func play(pSign:Sign)
    {
        let compSign = randomSign()
        
        switch pSign{
        case.rock:
            paperSign.isHidden=true
            scissorsSign.isHidden=true
        case.scissors:
            paperSign.isHidden=true
            rockSign.isHidden=true
        case.paper:
            rockSign.isHidden=true
            scissorsSign.isHidden=true
        }
        appSign.text=compSign.emoji
        
        if(pSign.doesWin(another: compSign)=="Draw"){
            resultsLabel.text="Draw"
        }
        else if(pSign.doesWin(another: compSign)=="PlayerWins"){
            resultsLabel.text="PlayerWins"
        }
        else{resultsLabel.text="Player loses"}
    }
}





