//
//  ListProtocols.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 26.05.2022.
//

import Foundation
import UIKit

protocol PresenterToInteractorListProtocol{
    
    var listPresenter: InteractorToPresenterListProtocol?{get set}
    func getAllTemps()
    func getSegmentTemps(segmentName: String)
}

protocol ViewToPresenterListProtocol{
    var listInteractor: PresenterToInteractorListProtocol?{get set}
    var listView: PresenterToViewListProtocol?{get set}
    func getTemps()
    func segmentTemps(segmentName: String)
}

protocol InteractorToPresenterListProtocol{
    func sendDataPresenter(temps: Array<Temps>)
}

protocol PresenterToViewListProtocol{
    func sendDataView(temps: Array<Temps>)
}

protocol PresenterToRouterListProtocol{
    static func createModule(ref: ListVC)
}
