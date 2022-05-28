//
//  Service.swift
//  StorlyApp
//
//  Created by Ozcan Biyik on 27.05.2022.
//

import Foundation

struct Service: Codable {
    let id: String?
    //let canvasTexts: [JSONAny]?
    let canvasImages: [CanvasImage]?
    let order: Int?
    let isFree, canBeAssignedFullBackground: Bool?
    let section: Section?
    let templateCoverImageURLString: String?
    let v: Int?
    let purpleID: String?
}

struct CanvasImage: Codable {
    let id: String?
    let isPicker: Bool?
    let frame1080X1920Model: Frame1080X1920Model?
    let cornerRadius: Int?
    let defaultImageString: String?
    let canvasImageID: String?
}

struct Frame1080X1920Model: Codable {
    let id: String?
    let height, width, x, y: Int?
    let frame1080X1920ModelID: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case height, width, x, y
        case frame1080X1920ModelID = "id"
    }
}


