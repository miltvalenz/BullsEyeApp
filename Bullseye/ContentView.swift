//
//  ContentView.swift
//  Bullseye
//
//  Created by Milton Valenzuela on 10/17/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("My First App!!!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
                .padding()
            Button(action: {
                print("Button pressed!!!")
                self.alertIsVisible = true
            }) {
                Text("Learning Swift")
            }
            .alert(isPresented: $alertIsVisible) { () ->
                Alert in
                return Alert(title: Text("Hello there!"), message: Text("This is my first pop-up."), dismissButton: .default(Text("Awesome!")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
