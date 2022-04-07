//
//  TabBarView.swift
//  LearnersArtifact
//
//  Created by Emanuele Blosio on 07/04/22.
//

import SwiftUI

struct TabBarView: View {

    
    var body: some View {
        TabView {
                    ContentView()
                        .tabItem {
                            Label("Learners", systemImage: "graduationcap")
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
