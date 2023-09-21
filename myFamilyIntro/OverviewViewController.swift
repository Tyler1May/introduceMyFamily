//
//  ViewController.swift
//  myFamilyIntro
//
//  Created by Tyler May on 9/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var allButtons: [UIButton]!
    var btn = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func nameTapped(_ sender: UIButton) {
        btn = sender
        performSegue(withIdentifier: "description", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DescriptionViewController {
            vc.img = btn.imageView?.image ?? UIImage()
            switch btn.titleLabel?.text {
            case "Jay":
                vc.labelText = "This is my Father Jay. He likes all kinds of sports. His favorite are football and basketball. He enjoys teaching his kids how to play any sport of their choice."
            case "Bethany":
                vc.labelText = "This is my Mother Bethany. She likes arts and crafts and loves to sew. She also like sports and spending time with her family."
            case "J.T.":
                vc.labelText = "This is my older brother J.T.. He likes sports aswell. His favorite sport to play basketball but also likes football aswell. He is the oldest child. He is 21 and currently working to save money for school."
            case "Tyler":
                vc.labelText = "This is me, Tyler. I also love sports mostly football and followed by basketball aswell. I am the 2nd olders child. I am 19 and currently learning how to code."
            case "Abigail":
                vc.labelText = "This is my younger and only sister Abigail. She loves to play volley ball and love animals. She is the 3 child. She is 17 and and a senior in Highschool"
            case "Emmett":
                vc.labelText = "This is my younger brother Emmett. He loves to play football. He also loves videogames.He is the 4th child. He is currently 12 and in the 6th grade."
            case "William":
                vc.labelText = "This is my younger brother William. He also loves to play football and soccer. He also likes to play videogames. He is the 5th child. He is currently 10 and in 4th grade."
            case "Brigham":
                vc.labelText = "This is my youngest brother Brigham. He is a trouble maker and enjoys copying everything anyone else does. He is the 6th child. He is currently 4 and is a stay at home kid."
            default:
                vc.labelText = "Error"
            }
        }
    }
    
}

