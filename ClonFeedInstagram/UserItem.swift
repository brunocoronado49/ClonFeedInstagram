//
//  UserItem.swift
//  ClonFeedInstagram
//
//  Created by Bruno Coronado on 22/09/21.
//

import SwiftUI

struct UserItem: View {
    var user: User
    
    var body: some View {
        VStack {
            user.picture
                .resizable()
                .clipShape(Circle())
                .scaledToFit()
                .frame(width: 80, height: 80)
                .overlay(Circle().stroke(Color.purple, lineWidth: 2))
            
            Text(user.username)
        }
    }
}

struct UserItem_Previews: PreviewProvider {
    static var previews: some View {
        UserItem(user: ModelData().users[0])
    }
}
