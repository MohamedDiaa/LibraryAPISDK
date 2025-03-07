//
//  Album.swift
//  LibraryAPISDK
//
//  Created by Mohamed Alwakil on 2025-03-07.
//

public struct Album: Codable {

    let userId: Int
    let id: Int
    let title: String

    enum CodingKeys: CodingKey {
        case userId
        case id
        case title
    }
}
