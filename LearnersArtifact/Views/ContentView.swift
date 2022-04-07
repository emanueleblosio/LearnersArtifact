//
//  ContentView.swift
//  LearnersArtifact
//
//  Created by Emanuele Blosio on 04/04/22.
//

import SwiftUI


struct ContentView: View {
    
    
    @State var isPresenting: Bool = false
    
    let learners: [String] = [ "Alba Capasso", "Alberto Galbiati", "Aldo Di Giovanni", "Aleksandr Kirichenko", "Aleksei Bochov", "Alessandra De Matteo", "Alessandro Borrelli", "Alessandro Gallo", "Alessandro Giuliano Iacomino", "Alessia Saviano", "Alessio Iodice", "Anastasia Skoryukova", "Andrea Masturzo", "Anthea Lavinia Bove", "Antonella Basso", "Antonio Braccolino", "Antonio Faccioli", "Antonio Giulio Mele", "Antonio Romano", "Antonio Trovè", "Arianna Sarno", "Barbara Beatrice", "Bivon Chaya Leitan", "Carmine Ponticelli", "Chiara Iaccarino", "Chiara Tancredi", "Christian Candela", "Cinzia Cigliano", "Claudio D'amore", "Claudio Diener", "Cristian Cimbir", "Daniele Romano", "Danil Girskiy", "Danil Masnaviev", "Danilo Sequino", "Dario Galiani", "Dario Vigilante", "Davide Belardi", "Dilki Sheronika Leitan", "Domenico Cafarelli", "Domenico Romano", "Edoardo Troianiello", "Eleonora Franco", "Elio Barisani", "Emanuele Blosio", "Emanuele Cimmeli", "Emma Rusllo", "Erika Sito","Fabrizio Petrellese", "Federico Stefana", "Francesca Forino","Francesco Amirante", "Francesco Maria Di Donna"]
    
    
    @State var present: Bool = false
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        //     UITableViewCell.appearance().backgroundColor = .clear
    }
    
    
    var body: some View {
        
        
        
        VStack{
            
            Button(action:{present.toggle()}){
                
                ZStack (alignment: .bottomLeading){
                    
                    Image("learnersButton")
                        .resizable()
                        .clipShape( RoundedRectangle(cornerRadius: 25))
                        .scaledToFit()
                   
                       
                    
                    
                    Text("Afternoon Learners")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(color: .primary, radius: 5, x: 5, y: 5)
                        .padding()
                        
                        
                    
                    
                }.frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
            }.padding()
            
            Spacer()
            
        }
        .sheet(isPresented: $present) {
            HalfSheet {
                ZStack(alignment: .bottom) {
                    List{
                        
                        ForEach (learners, id: \.self) {
                            item in
                            Text("\(item)")
                        }
                        
                    }.listRowBackground(Color.red)
                }
            }
            .ignoresSafeArea()
            .interactiveDismissDisabled()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

