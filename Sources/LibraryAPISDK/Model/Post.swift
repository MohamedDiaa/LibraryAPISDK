//
//  File.swift
//  LibraryAPISDK
//
//  Created by Mohamed Alwakil on 2025-03-07.
//

import Foundation

public struct Post: Codable {
    let id: Int
    let userId: Int
    let title: String
    let body: String
}
