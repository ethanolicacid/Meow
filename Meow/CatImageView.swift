//
//  CatImageView.swift
//  Meow
//
//  Created by Ethan Lim on 16/7/22.
//

import SwiftUI

struct CatImageView: View {
    @State var userLikedCat = false
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://cataas.com/c")!){ image in
                image
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .cornerRadius(20)
            } placeholder:{
                ProgressView()
                    .progressViewStyle(.circular)
            }
            HStack{
                VStack{
                    Text("Look at this cat! So cute!!")
                        .padding(.all)
                    Text("🐱😹😻🐶🙀😽😺")
                }
                Button{
                    userLikedCat.toggle()
                } label:{
                    Image(systemName: userLikedCat ? "hand.thumbsup.fill" : "hand.thumbsup")
                }
            }
        }
    }
}

struct CatImageView_Previews: PreviewProvider {
    static var previews: some View {
        CatImageView()
    }
}
