
import Subsonic
import SwiftUI

/*
 fat shark
*/

struct ContentView: View {
    let names = ["fat shark", "hello rune", "pig" ]
    let columns = [
        GridItem(.adaptive(minimum: 250))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns){
                    
                    ForEach(names, id: \.self) { name in
                        Button {
                            if name == "hello rune" {
                                play(sound: "\(name).mp3")
                            } else  {
                                play(sound: "\(name).m4a")
                                
                            }
                            print("\(name) was tapped")
                        } label: {
                            Image(name)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(25)
                                .padding(.horizontal)
                        }
                    }
                    
                }
            }
            .navigationTitle("Friend face says I...")
        }
        
        .navigationViewStyle(.stack)
    }
}
