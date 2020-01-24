//
//  Login.swift
//  Ecommerce UI
//
//  Created by Zerone on 22/01/20.
//  Copyright © 2020 Zerone. All rights reserved.
//

import SwiftUI

struct Login: View {
    
    @State var email:String = ""
    @State var password:String = ""
    @State private var showPassword = false
    @State var homeSuccess = false
    @State var siginUp = false
    
    var body: some View {
        
        VStack(spacing: 10){
            Spacer()
            Text("Sign In").font(.title)
            VStack(alignment: .leading) {
                Text("Email").foregroundColor(Color("ScreenHeadingTextColor"))
                TextField("", text: $email).frame(height: 35.0)
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                .foregroundColor(Color("ScreenHeadingTextColor"))
            }.padding()
            VStack(alignment: .leading) {
                Text("Password").foregroundColor(Color("ScreenHeadingTextColor"))
                HStack {
                    SecureField("", text: $password).frame(height: 35.0)
                    Button(action: { self.showPassword.toggle()}) {
                        Image(systemName: "eye.fill")
                        .foregroundColor(Color("ScreenHeadingTextColor"))
                    }.padding()
                }
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                .foregroundColor(Color("ScreenHeadingTextColor"))
            }.padding()
            Button(action: {
                self.homeSuccess.toggle()
            }) {
                Text("Log in").font(.system(size: 20.0)).foregroundColor(Color.white)
                }.frame(minWidth:0, maxWidth: .infinity).frame(height:50).background(LinearGradient(gradient: Gradient(colors: [Color("LoginButtonColor1"),Color("LoginButtonColor2")]), startPoint: .leading, endPoint: .trailing)).cornerRadius(6.0).shadow(color: Color("Shadow"), radius: 10, x: 0, y: 10).padding()
            HStack{
                Text("Don't have an account ?").foregroundColor(Color("ScreenHeadingTextColor"))
                Button(action: {
                    self.siginUp.toggle()
                }) {
                    Text("Sign Up").foregroundColor(Color.black)
                }.sheet(isPresented: $siginUp) {
                    SignUp()
                }
            }
            Spacer()
            Spacer()
        }.padding()
  
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

struct HeadTitle: View {
    var body: some View {
        HStack{
            Text("Login").font(.largeTitle)
            Spacer()
        }.padding()
    }
}
