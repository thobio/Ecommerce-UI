//
//  Home.swift
//  Ecommerce UI
//
//  Created by Zerone on 22/01/20.
//  Copyright © 2020 Zerone. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var search:String = ""
    var images =  ["women","men","kid"]
    var title = ["Women","Men","Kids"]
    var body: some View {
        ZStack{
            VStack(spacing:20) {
                NavigationView()
                ScrollView(.vertical, showsIndicators: false) {
                    SearchBar(search: search)
                    VStack(spacing:15){
                        CategoriesHeading()
                        CategoriesList(images: images, title: title)
                    }
                    VStack(alignment:.leading,spacing:15) {
                        Featured()
                        FeaturedList()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct NavigationView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Image("Bar").resizable().renderingMode(.original).frame(width: 30, height: 30, alignment: .center)
            }.padding()
            Spacer()
            Button(action: {
                
            }) {
                Image("Notofication").resizable().renderingMode(.original).frame(width: 30, height: 30, alignment: .center)
            }.padding()
            Button(action: {
                
            }) {
                Image("filter").resizable().renderingMode(.original).frame(width: 30, height: 30, alignment: .center)
            }.padding()
            
        }.padding(.horizontal,20)
    }
}

struct SearchBar: View {
    @State var search:String
    var body: some View {
        ZStack {
            HStack{
                Image(systemName: "magnifyingglass").font(.system(size: 20)).foregroundColor(Color("ScreenHeadingTextColor"))
                TextField("Search Your Product", text: $search)
            }.padding().background(Color.white).cornerRadius(5.0).shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 6)
        }.padding(.horizontal,10)
    }
}

struct CategoriesHeading: View {
    var body: some View {
        HStack{
            Text("Categories").fontWeight(.medium).font(.system(size: 22)).foregroundColor(Color("ScreenHeadingTextColor"))
            Spacer()
            Text("See all").font(.system(size: 14)).foregroundColor(Color("ScreenHeadingTextColor"))
        }.padding()
    }
}
struct Featured: View {
    var body: some View {
        HStack{
            Text("Featured").fontWeight(.medium).font(.system(size: 22)).foregroundColor(Color("ScreenHeadingTextColor"))
            Spacer()
            Text("See all").font(.system(size: 14)).foregroundColor(Color("ScreenHeadingTextColor"))
        }.padding()
    }
}

struct CategoriesList: View {
    var images:Array<String>
    var title:Array<String>
    var body: some View {
        HStack {
            ForEach(0 ..< 3) { item in
                Button(action: {
                    print("hello\(item)")
                }) {
                    ZStack(alignment:.center){
                        Text(self.title[item])
                    }.frame(width: 114, height: 65).offset(y:-20)
                }.background(Image(self.images[item]).renderingMode(.original).scaledToFit()).accentColor(.white).frame(width: 114, height: 65)
            }
        }
    }
}

struct FeaturedList:View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            ZStack(alignment: .center){
            HStack(alignment: .center){
                VStack (alignment: .leading){
                    Image("5").frame(width: 150, height: 180)
                    Text("$55.00")
                    Text("Woman T-Shirt")
                }
                VStack (alignment: .leading){
                    Image("6").frame(width: 150, height: 180)
                    Text("$34.00")
                    Text("Man T-Shirt")
                }
                VStack (alignment: .leading){
                    Image("7").frame(width: 150, height: 180)
                    Text("$34.00")
                    Text("Woman T-Shirt")
                }
            }.padding(.leading,20)
            }.frame(height:260)
        }.frame(height:260)
    }
}
