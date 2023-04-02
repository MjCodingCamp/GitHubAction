//
//  ContentView.swift
//  GitHub Action
//
//  Created by Mohammad Jeeshan  on 28/03/23.
//

import SwiftUI

struct ContentView: View {
    public var lottieView = LottieView()
    
    var body: some View {
        VStack {
            Spacer()
            lottieView.frame(width: 200, height: 200)
            Text("GitHub Action")
                .font(.title)
                .bold()
                .padding(.leading, 10)
            Spacer()
        }
        .padding()
        .onAppear(){
            lottieView.playAnimation()
        }.onDisappear(){
            lottieView.stopAnimation()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
