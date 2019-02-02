//
//  ViewController.swift
//  ConvoBuddy
//
//  Created by Anand Issac on 2019-02-02.
//  Copyright © 2019 Anand Issac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //background screen
    @IBOutlet weak var backScreen: UIImageView!
    
    //conversation time
    @IBOutlet weak var convoTime: UILabel!
    
    //eye contact score
    @IBOutlet weak var eyeScore: UILabel!
    
    //tips for future
    @IBOutlet weak var tip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Function changes background screen depending on emotion state input from Firebase
    func screenChange(emotionState: String){
        if (emotionState == "Happy"){
            backScreen.image = UIImage(named: "Happy")
        } else if (emotionState == "Angry"){
            backScreen.image = UIImage(named: "Angry")
        } else if (emotionState == "Sad"){
            backScreen.image = UIImage(named: "Sad")
        }
    }
    
    //Function inputs the conversation time and sets the conversation time label to that
    func convoTimeSet(convoTimeInput: Int){
        convoTime.text = String(convoTimeInput)
    }
    
    //Function inputs the eye contact score and sets the eyescore label to that
    func eyeScoreSet(eyeScoreInput: Int){
        eyeScore.text = String(eyeScoreInput)
    }
    
    
}

