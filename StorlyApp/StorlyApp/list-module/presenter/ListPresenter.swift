//
//  ListPresenter.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 26.05.2022.
//

import Foundation
import UIKit

class ListPresenter: ViewToPresenterListProtocol{
   
    
    
    var listInteractor: PresenterToInteractorListProtocol?
    var listView: PresenterToViewListProtocol?
    
    func getTemps() {
        listInteractor?.getAllTemps()
    }
    
    func segmentTemps(segmentName: String) {
        listInteractor?.getSegmentTemps(segmentName: segmentName)
    }

}

extension ListPresenter: InteractorToPresenterListProtocol{
    func sendDataPresenter(temps: Array<Temps>) {
        listView?.sendDataView(temps: temps)
    }
    
}
