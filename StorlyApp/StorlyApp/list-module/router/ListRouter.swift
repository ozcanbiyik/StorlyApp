//
//  ListRouter.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 26.05.2022.
//

import Foundation

class ListRouter: PresenterToRouterListProtocol{
    
    static func createModule(ref: ListVC) {
        let presenter = ListPresenter()
        ref.listPresenterObject = presenter
        ref.listPresenterObject?.listInteractor = ListInteractor()
        ref.listPresenterObject?.listView = ref
        ref.listPresenterObject?.listInteractor?.listPresenter = presenter
    }
    
}
