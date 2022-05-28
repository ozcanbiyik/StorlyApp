//
//  ViewController.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 26.05.2022.
//

import UIKit

class ListVC: UIViewController {
    
    @IBOutlet weak var colView: UICollectionView!
    
    var estimateWidth = 160.0
    var cellMarginSize = 16.0
    
    var listPresenterObject: ViewToPresenterListProtocol?
    
    //var temp: Temps?
    var tempList = [Temps]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colView.delegate = self
        self.colView.dataSource = self
        //Register Cells
        self.colView.register(UINib(nibName: "ItemCell", bundle: nil), forCellWithReuseIdentifier: "itemCell")
        //SetupGrid view
        self.setupGridView()
        
        ListRouter.createModule(ref: self)
        listPresenterObject?.getTemps()
        
    }
    
    
    @IBAction func changeSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            listPresenterObject?.listInteractor?.getSegmentTemps(segmentName: sender.titleForSegment(at: sender.selectedSegmentIndex)!)
        } else if sender.selectedSegmentIndex == 1{
            listPresenterObject?.listInteractor?.getSegmentTemps(segmentName: sender.titleForSegment(at: sender.selectedSegmentIndex)!)
        } else if sender.selectedSegmentIndex == 2{
            listPresenterObject?.listInteractor?.getSegmentTemps(segmentName: sender.titleForSegment(at: sender.selectedSegmentIndex)!)
        }
    }
    
    func setupGridView(){
        let flow = colView?.collectionViewLayout as! UICollectionViewFlowLayout
        flow.minimumInteritemSpacing = CGFloat(self.cellMarginSize)
        flow.minimumLineSpacing = CGFloat(self.cellMarginSize)
        
    }
}

extension ListVC: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tempList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! ItemCell
        cell.setup(with: tempList[indexPath.row])
        return cell
    }
    
}

extension ListVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.calculateWith()
        return CGSize(width: width, height: 320.0)
    }
    func calculateWith() -> CGFloat{
        let estimatedWidth = CGFloat(estimateWidth)
        let cellCount = floor(CGFloat(self.view.frame.size.width/estimatedWidth))
        let margin = CGFloat(cellMarginSize * 2)
        let width = (self.view.frame.size.width - CGFloat(cellMarginSize) * (cellCount - 1) - margin) / cellCount
        
        return width
    }
}

extension ListVC: PresenterToViewListProtocol{
    func sendDataView(temps: Array<Temps>) {
        self.tempList = temps
        DispatchQueue.main.async{
            self.colView.reloadData()
        }
    }
}
