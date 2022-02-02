
import Subsonic
import SwiftUI

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
                            play(sound: "hellorune.m4a")
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
            .navigationTitle("Friendface")
        }
        
        .navigationViewStyle(.stack)
    }
}

