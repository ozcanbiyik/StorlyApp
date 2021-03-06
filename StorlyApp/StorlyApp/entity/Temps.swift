//
//  Temps.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 26.05.2022.
//

import Foundation

struct Temps: Codable{
    
    var templateCoverImageUrlString : String?
    var section: Section?
    var isFree: Bool?
    var canvasImages: [CanvasImage]?
    
    init(){
        
    }
    
    init(templateCoverImageUrlString: String,section: Section, isFree: Bool, canvasImages: [CanvasImage]){
        self.templateCoverImageUrlString = templateCoverImageUrlString
        self.section = section
        self.isFree = isFree
        self.canvasImages = canvasImages
    }
    
    
}

enum Section: String, Codable {
    case birthday = "Birthday"
    case classic = "Classic"
    case clubhouse = "\u{1f44b} Clubhouse"
    case collage = "Collage"
    case colors = "Colors"
    case digital = "Digital"
    case film = "Film"
    case illustration = "Illustration"
    case minimal = "Minimal"
    case paper = "Paper"
}

struct CanvasImage: Codable {
    var defaultImageString: String?
}


