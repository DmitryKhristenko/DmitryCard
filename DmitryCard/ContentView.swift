//
//  ContentView.swift
//  DmitryCard
//
//  Created by Дмитрий Х on 28.09.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1243635491, green: 0.473793447, blue: 0.4202285409, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("dmitry")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 350)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                Text("Dmitry Khristenko")
                    .font(Font.custom("Pacifico-Regular", size: 35))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+7 (981) 719-04-16", imageView: "phone.fill")
                InfoView(text: "dmitrykhrist@gmail.com", imageView: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
