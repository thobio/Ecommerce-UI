//
//  SelectedItemDetails.swift
//  Ecommerce UI
//
//  Created by Zerone on 24/01/20.
//  Copyright © 2020 Zerone. All rights reserved.
//

import SwiftUI

struct SelectedItemDetails: View {
    @Binding var show : Bool
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.show.toggle()
                }) {
                    Image(systemName: "arrow.left").font(.system(size: 25)).foregroundColor(Color("Head"))
                    
                }.padding()
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "magnifyingglass").font(.system(size: 25)).foregroundColor(Color("Head"))
                }.padding()
                Button(action: {
                    
                }) {
                    Image("Notofication").renderingMode(.original)
                }.padding()
            }.padding(.top,-10).padding()
            ScrollView(.vertical, showsIndicators: false){
            Images()
            HeadText().padding()
            SubHeadings()
                VStack(alignment: .leading, spacing: 10){
                    Text("Description").foregroundColor(Color("Head")).fontWeight(.regular).font(.system(size: 25))
                    Text("""
                        A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.
                        """).foregroundColor(Color("Head")).font(.system(size: 18))
                }
            Rectangle().background(Color.gray.opacity(0.5)).frame(height: 1)
            HStack(alignment: .center, spacing: 20) {
                Text("Select Size").font(.title).foregroundColor(Color("Head"))
                Text("Select Color").font(.title).foregroundColor(Color("Head"))
            }
            Rectangle().background(Color.gray.opacity(0.5)).frame(height: 1)
            Size()
            BuyButton()
            }.padding()
        }
    }
}

struct SelectedItemDetails_Previews: PreviewProvider {
    @State static var showS = true
    static var previews: some View {
        SelectedItemDetails(show: $showS)
    }
}

struct Images :View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "questionmark.square").foregroundColor(.white).offset(x:-40)
                }.padding()
                Spacer()
                HStack {
                    HStack {
                        HStack {
                            Circle().frame(width: 7, height: 7, alignment: .leading).foregroundColor(.white)
                            Circle().frame(width: 7, height: 7, alignment: .leading).foregroundColor(Color("LoginButtonColor1"))
                            Circle().frame(width: 7, height: 7, alignment: .leading).foregroundColor(.white)
                        }.offset(x:80,y: -15)
                        Spacer()
                    }
                }
            }.frame(height: 175.0, alignment: .center)
        }.background(Image("20")).frame(height: 175.0, alignment: .center)
    }
}

struct HeadText: View {
    var body: some View {
        VStack(spacing:10) {
            HStack{
                Text("Black turtleneck top").font(.title).foregroundColor(Color("Head"))
                Spacer()
            }
            HStack() {
                Text("$42").foregroundColor(Color("LoginButtonColor1")).font(.system(size:22))
                VStack {
                    Text("$62").font(.system(size: 13)).offset(y:7)
                    Rectangle().frame(width: 20, height: 1).offset(y:-10)
                }
                Spacer()
            }
        }
    }
}

struct BuyButton: View {
    var body: some View {
        HStack{
            Spacer()
            Text("BUY NOW").foregroundColor(Color.white).font(.system(size: 25)).fontWeight(.regular)
            Spacer()
        }.padding().edgesIgnoringSafeArea([.bottom,.leading,.trailing]).background(Color("LoginButtonColor1"))
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

struct Size: View {
    var body: some View {
        HStack {
            Spacer()
            Text("S").font(.system(size: 25)).padding().frame(width:60).cornerRadius(5).background(Color.gray.opacity(0.5))
            Text("M").font(.system(size: 25)).padding().frame(width:60).cornerRadius(5).background(Color("LoginButtonColor1")).foregroundColor(.white)
            Text("L").font(.system(size: 25)).padding().frame(width:60).cornerRadius(5).background(Color.gray.opacity(0.5))
            Text("XXL").font(.system(size: 25)).padding()
            Spacer()
        }
    }
}

struct SubHeadings: View {
    var body: some View {
        VStack{
            Rectangle().background(Color.gray.opacity(0.5)).frame(height: 1)
            HStack(spacing:10){
                Text("   4.5   ").foregroundColor(Color.white).padding().background(Color("LoginButtonColor1")).cornerRadius(10.0).frame(height: 20)
                Text("Very Good").foregroundColor(Color("Head")).font(.title)
                Spacer()
                Text("$9 Reviews").foregroundColor(Color("LoginButtonColor1"))
                Image(systemName: "questionmark.square").foregroundColor(Color("LoginButtonColor1"))
            }.padding()
            Rectangle().background(Color.gray.opacity(0.5)).frame(height: 1)
        }
    }
}
