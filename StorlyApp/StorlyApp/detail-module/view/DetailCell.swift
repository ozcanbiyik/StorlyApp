//
//  DetailCell.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 28.05.2022.
//

import UIKit
import Kingfisher

class DetailCell: UICollectionViewCell {
    

    @IBOutlet weak var detailImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
        
    func tempImageName(imageName: String){
        if let url = URL(string: "\(imageName)"){
            DispatchQueue.main.async {
                self.detailImage.kf.setImage(with:url)
            }
        }
    }
    
}
