//
//  File.swift
//  LibraryAPISDK
//
//  Created by Mohamed Alwakil on 2025-03-07.
//

import Foundation

public struct Photo: Codable {

    let albumId: Int
    let id: Int
    let title: String
    let photoURL: String
    let thumbnailUrl: String

    enum PhotoCodingKeys: String, CodingKey {
        case photoURL = "url"
    }
}

