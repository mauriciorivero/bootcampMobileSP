//
//  ContentView.swift
//  SophosDiceApp
//
//  Created by Mauricio Rivero on 17/11/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        //This the vertical layout for the app
        VStack {
            //Image declaration
            Image("m-dice_\(number)")
            
            //Button declaration
            Button(action: {

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
