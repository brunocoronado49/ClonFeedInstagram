//
//  Post.swift
//  ClonFeedInstagram
//
//  Created by Bruno Coronado on 22/09/21.
//

import Foundation
import SwiftUI

struct Post: Hashable, Codable, Identifiable {
    var id: Int
    var user: String
    var postName: String
    var likes: Int
    var description: String
    var favorite: Bool
    
    var post: Image {
        Image(postName)
    }
}
