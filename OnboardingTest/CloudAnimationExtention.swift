//
//  CloudAnimationExtention.swift
//  OnboardingTest
//
//  Created by Ahmed Sharabi on 04/10/2022.
//

import SwiftUI

struct CloudAnimation: ViewModifier {
    
    let timer = Timer.publish(
           every: 1/60,
           tolerance: 0.1,
           on: .main,
           in: .common
       ).autoconnect()
    @State var time = 0.1
    @State var offset: CGSize = .zero
    @State var widthOffset = 0.0
    func body(content: Content) -> some View {
        content
            .offset(offset)
            .onReceive(timer) { (_) in
                let widthBound = ( UIScreen.main.bounds.width / 2 ) + 150
                if widthOffset > widthBound {
                    widthOffset = -widthBound
                } else {
                    withAnimation(.linear) {
                        widthOffset += time
                    }
                }
                    offset = CGSize(width: widthOffset, height: 0)
            }
    }
}

extension View {
    func cloudAnimation() -> some View {
        modifier(CloudAnimation())
    }
}
