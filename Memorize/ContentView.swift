//
//  ContentView.swift
//  Memorize
//
//  Created by Adauto Oliveira on 21/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(content: {
            ForEach(0..<4, content: { index in
                CardView(isFaceUp: false)
            })

        })
        
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        
        
        //ZStack empilha objetos parecido com uma StackView
        ZStack(content: {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻")
            }else {
                RoundedRectangle.init(cornerRadius: 10.0).fill()
            }
           
       })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
