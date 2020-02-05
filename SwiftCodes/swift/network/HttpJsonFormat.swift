//
//  HttpJsonFormat.swift
//  SwiftCodes
//
//  Copyright © 2020 kylelearnedthis. All rights reserved.
//

import Foundation

enum HTTPError: LocalizedError {
    case statusCode
    case post
}

struct Post: Codable {

    let id: Int
    let title: String
    let body: String
    let userId: Int
}

struct Todo: Codable {

    let id: Int
    let title: String
    let completed: Bool
    let userId: Int
}
