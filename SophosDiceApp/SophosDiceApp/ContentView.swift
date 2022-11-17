//
//  ContentView.swift
//  SophosDiceApp
//
//  Created by Mauricio Rivero on 17/11/22.
//

import SwiftUI

struct ContentView: View {
    
    //Dice nombre declaration
    @State var number = 1
    
    var body: some View {
        //This the vertical layout for the app
        VStack {
            //Image declaration
            Image("m-dice_\(number)")
            
            //Button declaration
            Button(action: {
            // Here i change the dice number with random
                number = Int.random(in: 1...6)
            }){
                Text("Rol Dice!")
                    .fontWeight(.black)
                    .font(.system(size: 32))
                    .foregroundColor(Color.purple)
                    .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
