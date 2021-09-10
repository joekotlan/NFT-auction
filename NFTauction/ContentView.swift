//
//  ContentView.swift
//  NFTauction
//
//  Created by Joe Kotlan on 8/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var art = true
    @State private var cards = false
    @State private var music = false
    @State private var crypto = false
    @State private var willMoveToNextScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading) {
                    HStack {
                        Image("boxes")
                        Spacer()
                        Image("search")
                            .padding(.trailing, 10)
                        Image("avatar")
                    }
                    .padding(.bottom)
                    Text("Trending auctions")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .font(.system(.title, design: .rounded))
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            Button(action: {
                                self.art.toggle()
                            }, label: {
                                ZStack {
                                    Text("Art")
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 40.0)
                                        .padding(.vertical, 20.0)
                                        .foregroundColor(Color.white)
                                        .font(.system(.body, design: .rounded))
                                }
                            })
                            .background(art ? Image("button-background") : Image("button-background-purple").resizable())
                            .cornerRadius(50)
                            
                            Button(action: {
                                self.cards.toggle()
                            }, label: {
                                ZStack {
                                    Text("Cards")
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 40.0)
                                        .padding(.vertical, 20.0)
                                        .foregroundColor(Color.white)
                                        .font(.system(.body, design: .rounded))
                                }
                            })
                            .background(self.cards ? Image("button-background") : Image("button-background-purple").resizable())
                            .cornerRadius(50)
                            
                            Button(action: {
                                self.music.toggle()
                            }, label: {
                                ZStack {
                                    Text("Music")
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 40.0)
                                        .padding(.vertical, 20.0)
                                        .foregroundColor(Color.white)
                                        .font(.system(.body, design: .rounded))
                                }
                            })
                            .background(self.music ? Image("button-background") : Image("button-background-purple").resizable())
                            .cornerRadius(50)
                            
                            Button(action: {
                                self.crypto.toggle()
                            }, label: {
                                ZStack {
                                    Text("Crypto")
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 40.0)
                                        .padding(.vertical, 20.0)
                                        .foregroundColor(Color.white)
                                        .font(.system(.body, design: .rounded))
                                }
                            })
                            .background(self.crypto ? Image("button-background") : Image("button-background-purple").resizable())
                            .cornerRadius(50)
                            }
                        }
                    
                    ScrollView(.vertical, showsIndicators: false){
                        NavigationLink(destination: PinkyDeset()) {
                            VStack{
                                Image("pinky-deset")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(20)
                                    .padding(.vertical)
                                HStack {
                                    Text("Pinky deset")
                                        .fontWeight(.bold)
                                    Spacer()
                                    Text("1.555 ETH")
                                        .fontWeight(.bold)
                                }
                                .font(.system(.title2, design: .rounded))
                                .foregroundColor(Color.white)
                                HStack {
                                    Text("@freakpop")
                                    Spacer()
                                    Text("Current bid")
                                        .opacity(0.5)
                                }
                                .font(.system(.body, design: .rounded))
                                .foregroundColor(Color.white)
                            }
                        }
                        .padding(.top)
                        NavigationLink(destination: MemoriesOfPlanet()) {
                            VStack{
                                Image("memories-of-planet")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(20)
                                    .padding(.vertical)
                                HStack {
                                    Text("Memories of Planet")
                                        .fontWeight(.bold)
                                    Spacer()
                                    Text("6.25 ETH")
                                        .fontWeight(.bold)
                                }
                                .font(.system(.title2, design: .rounded))
                                .foregroundColor(Color.white)
                                HStack {
                                    Text("@kiraEX")
                                    Spacer()
                                    Text("Current bid")
                                        .opacity(0.5)
                                }
                                .font(.system(.body, design: .rounded))
                                .foregroundColor(Color.white)
                            }
                            .padding(.top)
                            .padding(.bottom, 150)
                        }
                    }
     
                }
                .padding(.top, 40)
                .padding()
                //.background(LinearGradient(gradient: Gradient(colors: [Color("purple"), Color("dark-purple")]), startPoint: .top, endPoint: .bottom))
                .background(
                    RadialGradient(gradient: Gradient(colors: [Color("purple"), Color("dark-purple")]), center: .topTrailing, startRadius: 100, endRadius: 500)
                )
                .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    ZStack {
                        VisualEffectView(effect: UIBlurEffect(style: .dark))
                            .frame(height: 130)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color.white, lineWidth: 3)
                                    .opacity(0.4)
                                    .padding(.horizontal, -3)
                            )
                        HStack{
                            Button(action: {}, label: {
                                Image("home")
                            })
                            .padding()
                            Button(action: {}, label: {
                                Image("chat")
                            })
                            .padding()
                            Button(action: {}, label: {
                                Image("menu")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                            })
                            Button(action: {}, label: {
                                Image("heart")
                            })
                            .padding()
                            Button(action: {}, label: {
                                Image("person")
                            })
                            .padding()
                        }
                        .padding(.vertical, 30)
                    }
                    .cornerRadius(50)
                    .padding(.bottom, -3)
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
        .accentColor(Color.white)
    }
}

struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        MemoriesOfPlanet()
    }
}
