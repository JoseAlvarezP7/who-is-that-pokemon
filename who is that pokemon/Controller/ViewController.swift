//
//  ViewController.swift
//  who is that pokemon
//
//  Created by Jose Alvarez on 9/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelMessage: UILabel!
    
    @IBOutlet var answerButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        createButtons()
        //        for button in answerButtons {
        //            button.setTitle("Nuevo título", for: .normal)
        //            button.setTitleColor(UIColor.black, for: .normal)
        //
        //        }
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender)
        print(sender.title(for: .normal)!)
    }
    
    
    func createButtons() {
        for button in answerButtons {
            button.layer.backgroundColor = UIColor.white.cgColor
            button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
            button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
            button.layer.shadowOpacity = 1.0
            button.layer.shadowRadius = 0
            button.layer.masksToBounds = false
            button.layer.cornerRadius = 10.0
        }
    }
}
