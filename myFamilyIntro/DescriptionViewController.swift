//
//  DescriptionViewController.swift
//  myFamilyIntro
//
//  Created by Tyler May on 9/21/23.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var personImg: UIImageView!
    
    var img = UIImage()
    var labelText: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = labelText
        personImg.image = img

    }
    

    

}
