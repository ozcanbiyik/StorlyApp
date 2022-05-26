//
//  Temps.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 26.05.2022.
//

import Foundation

class Temps: Codable{
    
    var templateCoverImageUrlString : String?
    var section : String?
    var isFree : Bool?
 
    init(){
        
    }
    
    init(templateCoverImageUrlString: String, section: String, isFree : Bool){
        self.templateCoverImageUrlString = templateCoverImageUrlString
        self.section = section
        self.isFree = isFree
    }
    
}
