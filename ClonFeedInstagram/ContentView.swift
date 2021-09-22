//
//  ContentView.swift
//  ClonFeedInstagram
//
//  Created by Bruno Coronado on 22/09/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showLikes = false
    
    var posts: [Post] {
        modelData.posts.filter { post in
            (!showLikes || post.favorite)
        }
    }
    
    var user: [User] = Array(ModelData().users.prefix(10))
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 10) {
                            ForEach(user) { item in
                                UserItem(user: item)
                                    .padding(5)
                            }
                        }
                    }
                    
                    Divider()
                    
                    ForEach(posts) { post in
                        PostItem(post: post)
                    }
                }
                .navigationBarTitle(
                    Text(""),
                    displayMode: .inline
                )
                .navigationBarItems(
                    leading: HStack {
                        Button(action: {}) {
                            Image(systemName: "ellipsis")
                        }
                        .foregroundColor(Color.black)
                        
                        Image("logo")
                            .resizable()
                            .foregroundColor(.white)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 60)
                            .padding(UIScreen.main.bounds.size.width/4+30)
                    },
                    
                    trailing: HStack {
                        Button(action: {}) {
                            Image(systemName: "heart")
                        }
                        .foregroundColor(Color.black)
                    }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
