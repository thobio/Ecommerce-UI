//
//  SignUp.swift
//  Ecommerce UI
//
//  Created by Zerone on 22/01/20.
//  Copyright © 2020 Zerone. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    
    @State var name:String = ""
    @State var email:String = ""
    @State var password:String = ""
    @State private var showPassword = false
    @State var siginIn = false
    @State var homePages = false
   
    
    var body: some View {
        //NavigationView {
        
        VStack(spacing: 10){
            Spacer()
            Text("Sign Up").font(.title)
            VStack(alignment: .leading) {
                     Text("Name").foregroundColor(Color("ScreenHeadingTextColor"))
                     TextField("", text: $name).frame(height: 35.0)
                     Rectangle()
                         .frame(height: 1.0, alignment: .bottom)
                         .foregroundColor(Color("ScreenHeadingTextColor"))
                 }.padding()
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
//            NavigationLink(destination: Home(show: $homePages), isActive: $homePages) {
//                           Text("")
//            }
            Button(action: {
               self.homePages.toggle()
            }) {
                Text("Sign Up").font(.system(size: 20.0)).foregroundColor(Color.white)
            }.frame(minWidth:0, maxWidth: .infinity).frame(height:50).background(LinearGradient(gradient: Gradient(colors: [Color("LoginButtonColor1"),Color("LoginButtonColor2")]), startPoint: .leading, endPoint: .trailing)).cornerRadius(6.0).shadow(color: Color("Shadow"), radius: 10, x: 0, y: 10).padding()
            HStack{
                Text("Already have an account ?").foregroundColor(Color("ScreenHeadingTextColor"))
                Button(action: {
                    self.siginIn.toggle()
                }) {
                    Text("Sign in").foregroundColor(Color.black)
                }.sheet(isPresented: $siginIn) {
                    Login()
                }
            }
            Spacer()
            Spacer()
        }.padding()//.navigationBarTitle("Sign Up")
//        .navigationBarTitle("")
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}

