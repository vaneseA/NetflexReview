//
//  ContentView.swift
//  NetflexReview
//
//  Created by DK on 2022/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView{
            
            VStack{
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.youtube.com")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("Youtube")
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.netflix.com")                .edgesIgnoringSafeArea(.all)
                ){
                    Text("Netflex")
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.red)
                        .foregroundColor(Color.black)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.disneyplus.com/ko-kr")                .edgesIgnoringSafeArea(.all)
                ){
                    Text("Disney+")
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.indigo)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                               }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//sdfbcvmcvbncv
