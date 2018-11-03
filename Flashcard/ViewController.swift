//
//  ViewController.swift
//  Flashcard
//
//  Created by Martha C. on 10/13/18.
//  Copyright © 2018 codemartha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
    
    @IBOutlet weak var btnOptionOne: UIButton!
    @IBOutlet weak var btnOptionTwo: UIButton!
    @IBOutlet weak var btnOptionThree: UIButton!
    
    
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor = view.backgroundColor
        frontLabel.layer.cornerRadius = 20.0
        frontLabel.layer.shadowRadius = 15.0
        frontLabel.layer.shadowOpacity = 0.2
        frontLabel.clipsToBounds = true
        
        backLabel.layer.cornerRadius = 20.0
        backLabel.layer.shadowRadius = 15.0
        backLabel.layer.shadowOpacity = 0.2
        backLabel.clipsToBounds = true
        
        btnOptionOne.layer.borderWidth = 3.0
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        btnOptionOne.clipsToBounds = true
        
        btnOptionTwo.layer.borderWidth = 3.0
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        btnOptionTwo.clipsToBounds = true
        
        btnOptionThree.layer.borderWidth = 3.0
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        btnOptionThree.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if(frontLabel.isHidden){
            frontLabel.isHidden = false;
        }
        else {
            frontLabel.isHidden = true;
        }
    }
    
    @IBAction func didTapOptionOne(_ sender: Any) {
        btnOptionOne.isHidden = true
    }
    
    @IBAction func didTapOptionTwo(_ sender: Any) {
        btnOptionTwo.isHidden = true
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        btnOptionThree.isHidden = true
    }
    
    
    func updateFlashcard(question: String, answer: String)  {
        
        updateFlashcard(question: "Team Edward or Team Jacob?", answer: "I'll tell you after class")
        
        dismiss(animated: true)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
    }
        
    }
    
    
        

    

    
   

    
        

    

    


