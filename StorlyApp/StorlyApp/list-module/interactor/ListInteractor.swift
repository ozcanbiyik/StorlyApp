//
//  ListInteractor.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 26.05.2022.
//

import Foundation
import Alamofire
import SwiftUI

class ListInteractor: PresenterToInteractorListProtocol{
    
    var listPresenter: InteractorToPresenterListProtocol?
    
    func getAllTemps() {
        
        AF.request("http://storly-dev.herokuapp.com/storly/api/templates", method: .get).response{ response in
            if let data = response.data{
                do{
                    let response = try JSONDecoder().decode([Temps]?.self, from: data)
                    var list = [Temps]()
                    if let cmgList = response{
                        list = cmgList;
                    }
                    self.listPresenter?.sendDataPresenter(temps: list)
                }catch{
                    print(error)
                }
            }
        }
        
    }
        
    func getSegmentTemps(segmentName: String) {
        AF.request("http://storly-dev.herokuapp.com/storly/api/templates", method: .get).response{ response in
            if let data = response.data{
                do{
                    let response = try JSONDecoder().decode([Temps]?.self, from: data)
                    var list = [Temps]()
                    if let cmgList = response{
                        list = cmgList;
                    }
                    self.listPresenter?.sendDataPresenter(temps: list.filter{$0.section?.rawValue == "\(segmentName)"})
                }catch{
                    print(error)
                }
            }
        }
    }
    
    
}

