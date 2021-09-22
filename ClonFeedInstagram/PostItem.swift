//
//  PostItem.swift
//  ClonFeedInstagram
//
//  Created by Bruno Coronado on 22/09/21.
//

import SwiftUI

struct PostItem: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(post.user)
                .bold()
                .font(.title)
            
            post.post
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 360, height: 250)
            
            Text(post.description)
                .padding(5)
            
            HStack {
                Image(systemName: "heart")
                Image(systemName: "bubble.right")
            }
            .padding(.bottom, 20)
        }
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem(post: ModelData().posts[0])
    }
}
