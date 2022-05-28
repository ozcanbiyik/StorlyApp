//
//  DetailVC.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 28.05.2022.
//

import UIKit
import Kingfisher

class DetailVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var subsButton: UIButton!
    
    var temps: Temps?
    var tempList = [Temps]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        if(temps?.isFree == true){
            subsButton.isHidden = true
        }
      
    
    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toListVC", sender: nil)
    }
    
    @IBAction func subsButtonClicked(_ sender: Any) {
    }
    
}

extension DetailVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return temps?.canvasImages?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DetailCell
        cell.tempImageName(imageName: (temps?.canvasImages![indexPath.row].defaultImageString)!)
        return cell
    }
    
}

