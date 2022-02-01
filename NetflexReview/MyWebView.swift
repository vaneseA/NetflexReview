//
//  MyWeb.swift
//  NetflexReview
//
//  Created by DK on 2022/02/01.
//

import SwiftUI
import WebKit


//uikit 의 uiview를 사용할 수 있도록 한다
// UIviewcontrollerRepresentable
struct MyWebView: UIViewRepresentable{
    
    var urlToLoad : String
    
    //UI view 만들기
    func makeUIView(context: Context) -> some WKWebView {
    
        guard let url = URL(string:  self.urlToLoad) else{
            return WKWebView()
        }
        
        //웹뷰 인스턴스 생성
        let webview = WKWebView()

        //웹뷰를 로드한ㅏ
        webview.load(URLRequest(url: url))
    
        return webview
    }
    
    
    //업데이트 UI view
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyWebView>) {

    }
}

struct MyWebView_Previews: PreviewProvider{
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}

