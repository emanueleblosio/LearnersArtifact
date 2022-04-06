//
//  ButtonView.swift
//  LearnersArtifact
//
//  Created by Emanuele Blosio on 06/04/22.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.accentColor)
            
            
            Text("Afternoon Learners")
                .font(.largeTitle)
                .foregroundColor(.white)
            

        }.frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
