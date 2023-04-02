//
//  LottieView.swift
//  SILive-iOS
//
//  Created by Mohammad Jeeshan  on 21/01/23.
//

import UIKit
import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    private let animationView = LottieAnimationView(name: "github_icon")
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    func playAnimation(){
        animationView.play()
    }
    func stopAnimation(){
        animationView.stop()
    }
}
 
