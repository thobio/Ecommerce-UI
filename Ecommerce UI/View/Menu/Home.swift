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
     @State var categories:Bool = false
     @State var featured:Bool = false
     @State var bestSell:Bool = false
     //@Binding var show : Bool
    
    var images =  ["women","men","kid"]
    var title = ["Women","Men","Kids"]
    
    var body: some View {
         NavigationView{
            ZStack{
                VStack(spacing:20) {
                    NavigationViews()
                    ScrollView(.vertical, showsIndicators: false) {
                        SearchBar(search: search)
                        VStack(spacing:15){
                            CategoriesHeading(categories: categories)
                            CategoriesList(images: images, title: title)
                        }
                        VStack(alignment:.leading,spacing:15) {
                            Featured(featured: featured)
                            FeaturedList()
                        }
                        VStack(alignment:.leading,spacing:15) {
                            BestSell(bestSell: bestSell)
                            BestSellList()
                        }
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }.accentColor(Color("ScreenHeadingTextColor"))
    }
}

struct Home_Previews: PreviewProvider {
   // @State static var showS = true
    static var previews: some View {
        Home()
    }
}

struct NavigationViews: View {
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
    @State var categories:Bool
    var body: some View {
        HStack{
            Text("Categories").fontWeight(.medium).font(.system(size: 22)).foregroundColor(Color("ScreenHeadingTextColor"))
            Spacer()
            NavigationLink(destination: DetailsPage(show: $categories, headingName: "Categories"), isActive: $categories) {
                Text("")
            }
            Text("See all").font(.system(size: 14)).foregroundColor(Color("ScreenHeadingTextColor")).onTapGesture {
                self.categories.toggle()
            }
        }.padding()
    }
}
struct Featured: View {
    @State var featured:Bool
    var body: some View {
        HStack{
            Text("Featured").fontWeight(.medium).font(.system(size: 22)).foregroundColor(Color("ScreenHeadingTextColor"))
            Spacer()
            NavigationLink(destination: DetailsPage(show: $featured, headingName: "Featured"), isActive: $featured) {
                Text("")
            }
            Text("See all").font(.system(size: 14)).foregroundColor(Color("ScreenHeadingTextColor")).onTapGesture {
                self.featured.toggle()
            }
        }.padding()
    }
}
struct BestSell: View {
    @State var bestSell:Bool
    var body: some View {
        HStack{
            Text("Best Sell").fontWeight(.medium).font(.system(size: 22)).foregroundColor(Color("ScreenHeadingTextColor"))
            Spacer()
            NavigationLink(destination: DetailsPage(show: $bestSell, headingName: "Best Sell"), isActive: $bestSell) {
                Text("")
            }
            Text("See all").font(.system(size: 14)).foregroundColor(Color("ScreenHeadingTextColor")).onTapGesture {
                self.bestSell.toggle()
            }
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
                    Button(action: {
                        
                    }) {
                        VStack (alignment: .leading){
                            Image("7").renderingMode(.original).frame(width: 150, height: 180)
                            Text("$55.00")
                            Text("Woman T-Shirt")
                        }
                    }.accentColor(.black)
                    Button(action: {
                        
                    }) {
                        VStack (alignment: .leading){
                            Image("8").renderingMode(.original).frame(width: 150, height: 180)
                            Text("$34.00")
                            Text("Man T-Shirt")
                        }
                    }.accentColor(.black)
                    Button(action: {
                        
                    }) {
                        VStack (alignment: .leading){
                            Image("9").renderingMode(.original).frame(width: 150, height: 180)
                            Text("$34.00")
                            Text("Woman T-Shirt")
                        }
                    }.accentColor(.black)
                }.padding(.leading,20)
            }.frame(height:260)
        }.frame(height:260)
    }
}

struct BestSellList:View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            ZStack(alignment: .center){
                HStack(alignment: .center){
                    Button(action: {
                        
                    }) {
                        VStack (alignment: .leading){
                            Image("12").renderingMode(.original).frame(width: 150, height: 180)
                            Text("$25.00")
                            Text("Woman T-Shirt")
                        }
                    }.accentColor(.black)
                    Button(action: {
                        
                    }) {
                        VStack (alignment: .leading){
                            Image("11").renderingMode(.original).frame(width: 150, height: 180)
                            Text("$44.00")
                            Text("Man T-Shirt")
                        }
                    }.accentColor(.black)
                    Button(action: {
                        
                    }) {
                        VStack (alignment: .leading){
                            Image("7").renderingMode(.original).frame(width: 150, height: 180)
                            Text("$34.00")
                            Text("Woman T-Shirt")
                        }
                    }.accentColor(.black)
                }.padding(.leading,20)
            }.frame(height:260)
        }.frame(height:260)
    }
}
