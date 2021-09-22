//
//  User.swift
//  ClonFeedInstagram
//
//  Created by Bruno Coronado on 22/09/21.
//

import Foundation
import SwiftUI

struct User: Codable, Hashable, Identifiable {
    var id: Int
    var username: String
    var pictureName: String
    var friend: Bool
    
    var picture: Image {
        Image(pictureName)
    }
}
