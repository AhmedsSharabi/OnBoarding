//
//  Third Screen.swift
//  OnboardingTest
//
//  Created by Ahmed Sharabi on 03/10/2022.
//

import SwiftUI

struct FirstView: View {
    @Binding var tabSelection: Int
    
    var body: some View {
        ZStack {
            Color("CusPurple")
            
            Image("cloud1")
                .resizable()
                .scaledToFit()
                .frame(width: 353, height: 222.53)
                .position(x: 400, y: 153)
                .cloudAnimation()
            Image("cloud2")
                .resizable()
                .scaledToFit()
                .frame(width: 99.15, height: 62.5)
                .position(x: 100, y: 50)
                .cloudAnimation()
            Image("cloud3")
                .resizable()
                .scaledToFit()
                .frame(width: 94, height: 29)
                .position(x: 300, y: 150)
                .cloudAnimation()
            Image("cloud3")
                .resizable()
                .scaledToFit()
                .frame(width: 49.56, height: 15.14)
                .position(x: 150, y: 200)
                .cloudAnimation()
            Image("cloud3")
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 7)
                .position(x: 20, y: 220)
                .cloudAnimation()
            Image("cloud4")
                .resizable()
                .scaledToFit()
                .frame(width: 199, height: 108)
                .position(x: 0, y: 150)
                .cloudAnimation()
            
            VStack(alignment: .center) {
                Spacer()
                Image("Clock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 317, height: 236)
                    .padding(.bottom, 59)
                
                
                Text("Efficient\nTime Management")
                    .font(Font.custom("Quicksand-Regular", size: 26))
                    .foregroundColor(Color("CusYellow"))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 19)
                
                Text("Every second is of infinite value.\nYou can manage it Now!")
                    .font(Font.custom("Quicksand-Bold", size: 13))
                    .foregroundColor(Color("CusYellow"))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 31)
                
                Button {
                    withAnimation {
                        self.tabSelection = 2
                    }
                } label: {
                    Text("Next")
                        .font(Font.custom("Quicksand-Bold", size: 16))
                        .foregroundColor(.white)
                }
                .frame(width: 273, height: 58)
                .background(Color("CusPink"))
                .cornerRadius(16)
                .padding(.bottom, 56)
                
                
                
                
            }
        }
        .ignoresSafeArea()
    }
}

