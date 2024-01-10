//
//  ContentView.swift
//  Dicey
//
//  Created by Aytek Özgül on 10.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        VStack{
            Text("Dicey")
                .foregroundStyle(.cyan)
                .bold()
                .font(.system(size: 50))
                .fontWeight(.black)
            Spacer()
        }
        
        HStack{
            Image("dice\(leftDiceNumber)")
                .resizable()
                .frame(width: 200, height: 200)
            Image("dice\(rightDiceNumber)")
                .resizable()
                .frame(width: 200, height: 200)
            
        }
        .offset(y:-200)
        .padding()
        Button{
            leftDiceNumber = Int.random(in: 1...6)
            rightDiceNumber = Int.random(in: 1...6)
        } label: {
            Text("Click Me")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.blue)
                .background(Color.black)
        }
        .offset(y:-100)
        Spacer()
    }
}

#Preview {
    ContentView()
}
