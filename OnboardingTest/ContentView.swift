//
//  ContentView.swift
//  OnboardingTest
//
//  Created by Ahmed Sharabi on 02/10/2022.
//

import SwiftUI


struct ToDo: Codable {
    var id: UUID
    var time: String
    var header: String
    var details: String
    var image: String
}



struct ContentView: View {
    let list = [ ToDo(id: UUID(), time: "8:00 AM", header:"Job Interveiw!", details: "This is the one you have been lon...", image: "people"),
                 ToDo(id: UUID(), time: "4:00 PM", header:"Ahmed’s Birthday", details: "At MochaHunters Cofe", image: "ballon"),
                 ToDo(id: UUID(), time: "8:00 PM", header: "Cinema Time", details: "Call your friends first", image: "cinema")]
    
    let columns = [
        GridItem(.adaptive(minimum: 327))
    ]
    @State var showOnBoarding = true
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("CusPurple")
                VStack {
                    Text("All added tasks")
                        .font(Font.custom("Quicksand-Bold", size: 14))
                        .foregroundColor(Color("CusYellow"))
                        .overlay {
                            Rectangle()
                                .frame(width: 130, height: 30)
                                .background(Color("CusYellow"))
                                .opacity(0.3)
                                .cornerRadius(50)
                        }
                        .padding(.bottom, 9)
                        .padding(.top, 76)
                    
                    Text("12:30 PM")
                        .font(Font.custom("Quicksand-Regular", size: 55))
                        .foregroundColor(Color("CusYellow"))
                        .padding(.bottom, 8)
                    
                    Text("17th of October, Thursday")
                        .font(Font.custom("Quicksand-Regular", size: 14))
                        .foregroundColor(Color("CusYellow"))
                        .padding(.bottom, 32)
                    
                    Spacer()
                    
                    ScrollView {
                        
                        LazyVGrid(columns: columns) {
                            ForEach(list, id: \.id) { item in
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(item.time)
                                            .font(Font.custom("Quicksand-Regular", size: 12))
                                            .padding(.bottom, 1)
                                        
                                        
                                        Text(item.header)
                                            .font(Font.custom("Quicksand-Bold", size: 14))
                                            .padding(.bottom, 1)
                                        
                                        Text(item.details)
                                            .font(Font.custom("Quicksand-Regular", size: 12))
                                            .foregroundColor(.secondary)
                                        
                                    } .padding(16)
                                    Spacer()
                                    
                                    Image(item.image)
                                        .resizable()
                                        .frame(width: 51, height: 51)
                                        .padding()
                                    
                                }
                                .frame(width: 327, height: 92)
                                .background(.white)
                                .cornerRadius(15)
                                .padding(.bottom, 24)
                                
                                
                                
                            }
                        }
                    }
                    Spacer()
                    
                }
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                        .frame(width: 56, height: 56)
                        .background(.white)
                        .cornerRadius(16)
                        .padding(.top,664)
                        .shadow(color: .purple ,radius: 7)
                    
                }
                
            }
            
            .toolbar {
                ToolbarItem {
                    Button {
                        
                    } label: {
                        Image(systemName: "gearshape")
                            .foregroundColor(.white)
                    }
                }
            }
            .ignoresSafeArea()
        }
        .fullScreenCover(isPresented: $showOnBoarding, content: {
            OnBoardingView(showOnBoarding: $showOnBoarding)
        })
    }
}

struct OnBoardingView: View {
    @Binding var showOnBoarding: Bool
    @State private var tabSelection = 1
   
    var body: some View {
        TabView(selection: $tabSelection) {
            FirstView(tabSelection: $tabSelection)
                .tag(1)
            
            SecondView(showOnBoarding: $showOnBoarding)
                .tag(2)
        }
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
    }
}
