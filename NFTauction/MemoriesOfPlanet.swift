//
//  MemoriesOfPlanet.swift
//  NFTauction
//
//  Created by Joe Kotlan on 9/2/21.
//

import SwiftUI

struct MemoriesOfPlanet: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading) {
                    HStack {
                        Image("home")
                            .opacity(0)
                        Spacer()
                        VStack(alignment: .center) {
                            Text("Auction ending in")
                                .font(.system(.footnote, design: .rounded))
                                .opacity(0.5)
                            Text("03h  07m  14s")
                                .font(.system(.title, design: .rounded))
                                .fontWeight(.bold)
                        }
                        .foregroundColor(Color.white)
                        Spacer()
                        Image("heart")
                    }
                    VStack(alignment: .leading) {
                        Image("memories-of-planet")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                            .padding(.vertical)
                        Text("Memories of Planet")
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.bold)
                        HStack {
                            HStack {
                                Image("avatar")
                                Text("@kiraEX")
                                    .font(.system(.callout, design: .rounded))
                                    .fontWeight(.bold)
                                    .padding(.trailing)
                            }
                            .background(Image("button-background-purple").resizable())
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Current bid")
                                    .opacity(0.5)
                                    .font(.system(.body, design: .rounded))
                                Text("6.25 ETH")
                                    .font(.system(.title, design: .rounded))
                                    .fontWeight(.bold)
                            }
                        }
                        Spacer()
                        Button(action: {}, label: {
                            Text("Place a bid")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .font(.system(.title2, design: .rounded))
                        })
                        .frame(maxWidth: .infinity, maxHeight: 70)
                        .background(Image("button-background").resizable().aspectRatio(contentMode: .fill))
                        .cornerRadius(25)
                        .padding(.bottom, 10)
                    }
                    .foregroundColor(Color.white)
                }
                .padding(.top, 40)
                .padding()
                .background(
                    RadialGradient(gradient: Gradient(colors: [Color("purple"), Color("dark-purple")]), center: .topTrailing, startRadius: 100, endRadius: 500)
                )
                .edgesIgnoringSafeArea(.all)
            }
        }
        .accentColor(Color.white)
    }
}

struct MemoriesOfPlanet_Previews: PreviewProvider {
    static var previews: some View {
        MemoriesOfPlanet()
    }
}
