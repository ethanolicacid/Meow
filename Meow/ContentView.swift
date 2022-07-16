//
//  ContentView.swift
//  Meow
//
//  Created by Ethan Lim on 16/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            CatFactView()
                .tabItem {
                    Label("Cat Facts", systemImage: "lightbulb")
                }
            CatImageView()
                .tabItem {
                    Label("Pictures", systemImage: "photo")
                }
            }
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
