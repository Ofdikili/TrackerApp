//
//  ContentView.swift
//  TrackerApp
//
//  Created by Ömer Faruk Dikili on 16.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Overview")
                        .font(.title2)
                        .bold(true)
                }.padding()
                    .frame(maxWidth:.infinity)
                
            }.background(Color.background)
             .navigationBarTitleDisplayMode(.inline)
             .toolbar{
                 ToolbarItem{
                     Image(systemName: "bell.badge")
                         .renderingMode(.original)
                 }
             }
        }.navigationViewStyle(.stack)
    }
        
}

#Preview {
    ContentView()
}

#Preview("Dark View") {
    ContentView()
        .preferredColorScheme(.dark)
}

