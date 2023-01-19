//
//  NetworkService.swift
//  Interchangable-Network-SwiftUI
//
//  Created by Osman Emre Ömürlü on 18.12.2022.
//

import Foundation


protocol NetworkService {
    func download(_ resource: String) async throws -> [User]
    var type: String { get }
}
