//
//  ContentView.swift
//  Ecommerce UI
//
//  Created by Zerone on 22/01/20.
//  Copyright © 2020 Zerone. All rights reserved.
//

import SwiftUI

struct ContentView: View {
     @State var signInSuccess = false
     @State var signUpSuccess = false
    var body: some View {
            VStack(alignment: .center, spacing: 30){
                Spacer()
                VStack {
                    Text("Welcome to Bolt").font(.title).foregroundColor(Color("ScreenHeadingTextColor"))
                    Text("Explore Us").fontWeight(.medium).foregroundColor(Color("ScreenHeadingTextColor"))
                }
                
                Spacer()
                Image("FirstScreenImage").resizable().frame(height: 216, alignment: .center).padding()
                Spacer()
                Button(action: {
                    self.signInSuccess.toggle()
                }) {
                    Text("Log in").font(.system(size: 20.0)).foregroundColor(Color.white)
                }.frame(minWidth:0, maxWidth: .infinity).frame(height:50).background(LinearGradient(gradient: Gradient(colors: [Color("LoginButtonColor1"),Color("LoginButtonColor2")]), startPoint: .leading, endPoint: .trailing)).cornerRadius(6.0).shadow(color: Color("LoginButtonColor2"), radius: 10, x: 0, y: 10).sheet(isPresented: $signInSuccess) {
                    Login()
                    }
                Button(action: {
                    self.signUpSuccess.toggle()
                }) {
                    Text("Signup").font(.system(size: 20.0)).foregroundColor(Color.black)
                }.sheet(isPresented: $signUpSuccess) {
                    SignUp()
                }
                Spacer()
            }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
