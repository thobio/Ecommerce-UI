//
//  DetailsPage.swift
//  Ecommerce UI
//
//  Created by Zerone on 24/01/20.
//  Copyright © 2020 Zerone. All rights reserved.
//

import SwiftUI

struct DetailsPage: View {
    @Binding var show : Bool
    @State var headingName:String = ""
    @State var tempNumber : Int = 0
    @State var details:Bool = false
    var amount = [0:["Woman T-Shirt","Man T-Shirt"],1:["Woman T-Shirt","Blezer"],2:[" T-Shirt"," Shirt"]]
    var body: some View {
        ZStack {
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
                HStack{
                    Text(headingName).font(.system(size: 25)).fontWeight(.semibold).foregroundColor(Color("Head"))
                    Spacer()
                }.padding(.leading,40).padding(.top,-20)
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<3) { item in
                        ZStack(alignment: .center){
                            HStack(alignment: .center){
                                NavigationLink(destination: SelectedItemDetails(show: self.$details), isActive: self.$details) {
                                    Text("")
                                }
                                Button(action: {
                                    self.details.toggle()
                                }) {
                                    VStack (alignment: .leading){
                                        Image("\(item == 0 ? 1 : (item == 2 ? 5 : 3))").renderingMode(.original).frame(width: 150, height: 180)
                                        Text("$35.00")
                                        Text("\(self.amount[item]![0])")
                                    }
                                }.accentColor(.black).padding()
                                Button(action: {
                                    
                                }) {
                                    VStack (alignment: .leading){
                                      
                                        Image("\(item == 0 ? 2 : (item == 2 ? 6 : 4))").renderingMode(.original).frame(width: 150, height: 180)
                                        Text("$35.00")
                                        Text("\(self.amount[item]![1])")
                                    }
                                }.accentColor(.black).padding()
                            }.padding()
                        }.frame(height:260).padding()
                    }
                    Spacer()
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct DetailsPage_Previews: PreviewProvider {
    @State static var showS = true
    static var previews: some View {
        DetailsPage(show: $showS)
    }
}


