
import Subsonic
import SwiftUI

/*
 fat shark
*/

struct ContentView: View {
    let names = ["fat shark", "hello rune", "pig thing" ]
    let columns = [
        GridItem(.adaptive(minimum: 250))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns){
                    
                    ForEach(names, id: \.self) { name in
                        Button {
                            play(sound: "Boom.mp3")
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
