//
//  Second Screen.swift
//  OnboardingTest
//
//  Created by Ahmed Sharabi on 03/10/2022.
//

import SwiftUI

struct SecondView: View {
     @Binding var showOnBoarding: Bool
    
    
    var body: some View {
        
        
        NavigationStack {
            ZStack {
                Color("CusPurple")
                
                VStack {
                    Spacer()
                    Text("Good Morning!\nYour Tasks For Today")
                        .multilineTextAlignment(.center)
                        .font(Font.custom("Quicksand-Regular", size: 24))
                        .foregroundColor(Color("CusYellow"))
                        .padding(.bottom, 16)
                       
                    
                    Text("17th of October, Thursday")
                        .font(Font.custom("Quicksand-Regular", size: 14))
                        .foregroundColor(Color("CusYellow"))
                        .padding(.bottom, 98)
                    
                    Image("List")
                        .resizable()
                        .frame(width: 327, height: 324)
                        .padding(.bottom, 94)
                    
                    Button {
                        showOnBoarding.toggle()
                    } label: {
                        Text("Call it done!")
                            .font(Font.custom("Quicksand-Bold", size: 16))
                            .foregroundColor(.white)
                    }
                    .frame(width: 327, height: 58)
                    .background(Color("CusPink"))
                    .cornerRadius(16)
                    .padding(.bottom, 38)
                    
                        
                    
                }
                
            }
            
        .ignoresSafeArea()
        }
    }
}
