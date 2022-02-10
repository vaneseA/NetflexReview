//
//  NetflixRow.swift
//  NetflexReview
//
//  Created by DK on 2022/02/09.
//

import SwiftUI


struct NetflixRow: View {
    let netflix : Netflix
    
    
    var body: some View {
        HStack {
            NetflixImage
            NetflixDescription
            
        }
        .frame(height: 150)
        .background(Color.primary.colorInvert())
        .cornerRadius(1)
        .shadow(color: Color.primary.opacity(0.33), radius: 1, x: 2, y: 2)
        .padding(.vertical,8)
    }
}


private extension NetflixRow{
    var NetflixImage: some View {
//        Image("이태원 클라쓰")
        Image(netflix.imagename)
            .resizable()
            .scaledToFill()
            .frame(width: 140)
            .clipped()
    }

    var NetflixDescription: some View {
        VStack(alignment: .leading) { //정렬기준 변경
            // 영상명 부분에 작성
//            Text("이태원 클라쓰")
            Text(netflix.name)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom,6)
            
            // 영상 설명 부분에 작성
//            Text("박새로이가 이러쿵 저러쿵 아 재밌다 재밌다 정말 재밌다!")
            Text(netflix.description)
                .font(.footnote)
                .foregroundColor(.secondary)
                .lineLimit(nil)
                .truncationMode(.tail)
                .padding(.top)
            
            Spacer()
            
            footerView
            Text("리뷰보러 가기 <<")
                .font(.headline)
            Spacer()
        }
        .padding([.leading, .bottom], 12)
        .padding([.top, .trailing])
    }

    var footerView: some View {
        HStack(spacing: 0){//HStack이 가진 자식 뷰 사이의 간격을 0으로 지정
//            Text("별점: \(Image(systemName: "star.fill"))")
            Text("별점: ").bold()
            + Text(netflix.scoreStar)
                .foregroundColor(Color.yellow)
            
            Spacer()
            
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(Color.red)
                .frame(width: 32, height: 32)
            
            Image(systemName: "cart")
                .foregroundColor(Color.blue)
                .frame(width: 32, height: 32)
            
        }
    }
}

struct NetflixRow_Previews: PreviewProvider {
    static var previews: some View {
        NetflixRow(netflix: NetflixSamples[0])
    }
}
