//
//  ResultViewController.swift
//  who is that pokemon
//
//  Created by Jose Alvarez on 10/01/23.
//

import UIKit
import Kingfisher

class ResultViewController: UIViewController {

    
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var pokemonLabel: UILabel!
    
    var pokemonName: String = ""
    var pokemonImageURL: String = ""
    var finalScore: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scoreLabel.text = "Perdiste, tu puntaje fue de \(finalScore)."
                pokemonLabel.text = "No, es un \(pokemonName)"
                pokemonImage.kf.setImage(with: URL(string: pokemonImageURL))
                
            }
    
    
    @IBAction func playAgainPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
