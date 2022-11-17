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
                .padding(.top, 150)
                .onTapGesture {
                    //Here i added the functionality of random for the tap gesture on the image
                    number = Int.random(in: 1...6)
                }
            
            //Button declaration
            Button(action: {
                
            // Here i change the dice number with random
                number = Int.random(in: 1...6)
            }){
                //Text instance and graphis parameters
                Text("Roll Dice!")
                    .fontWeight(.black)
                    .font(.system(size: 32))
                    .foregroundColor(Color.white)
                    .padding()
                    .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.roundedRectangle/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.purple/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
            }
            
            //an image for a logo app
            Image("logo-autor_1")
                .padding(.top, 200)
            Image("sophos-logo_1")
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
