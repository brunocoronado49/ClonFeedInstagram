//
//  UserRow.swift
//  ClonFeedInstagram
//
//  Created by Bruno Coronado on 22/09/21.
//

import SwiftUI

struct UserRow: View {
    var user: [User]
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(user) { item in
                        UserItem(user: item)
                    }
                }
            }
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: Array(ModelData().users.prefix(4)))
    }
}
