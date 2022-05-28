//
//  SubsVC.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 28.05.2022.
//

import UIKit
import Kingfisher

class SubsVC: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonClick(_ sender: UIButton) {
        if (sender.titleLabel?.text! == "Weekly"){
            labelText.text = "Weekly subs selected"
        } else if(sender.titleLabel?.text! == "Monthly"){
            labelText.text = "Monthly subs selected"
        }else if(sender.titleLabel?.text! == "Yearly"){
            labelText.text = "Yearly subs selected"
        }else{
            labelText.text = "404"
        }
    }
    
    
}
