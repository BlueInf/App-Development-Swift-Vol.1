//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Krasimir Marinov on 8/17/17.
//  Copyright © 2017 Krasimir Marinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateElement()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    let elementList = ["Carbon","Gold", "Chlorine","Sodium"]
    var currentElementIndex=0
    
    
    func updateElement(){
        answerLabel.text="?"
        let elementName = elementList[currentElementIndex]
        let image=UIImage(named: elementName)
        imageView.image=image
        
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text=elementList[currentElementIndex]
        
    }

    @IBAction func goToNextElement(_ sender: Any) {
        
        currentElementIndex+=1
        if currentElementIndex>=elementList.count{
            currentElementIndex=0
        }
        updateElement()
    }
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var answerLabel: UILabel!
}

