//
//  ItemCell.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 26.05.2022.
//

import UIKit
import Kingfisher

class ItemCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func tempImageName(imageName: String){
        if let url = URL(string: "\(imageName)"){
            DispatchQueue.main.async {
                self.imageView.kf.setImage(with:url)
            }
        }
    }
    
    func setup(with temps : Temps){
        tempImageName(imageName: temps.templateCoverImageUrlString ?? "https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/ae/4c/d4/ae4cd42a-80a9-d950-16f5-36f01a9e1881/source/100x100bb.jpg")
    }

}
