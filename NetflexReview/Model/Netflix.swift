//
//  Netflix.swift
//  NetflexReview
//
//  Created by DK on 2022/02/10.
//

import Foundation

struct Netflix {
    let name: String
    let imagename: String
    let scoreStar: String
    let description: String
    var isFavorite: Bool = false
}

let NetflixSamples = [
    Netflix(name: "마이네임", imagename: "마이네임", scoreStar: "★★★☆☆", description: "아빠의 복수를 위해 블라블라 어쩌구 저쩌구"),
    Netflix(name: "오징어게임", imagename: "오징어게임", scoreStar: "★☆☆☆☆", description: "나는 재미없던데 왜이렇게 재밌다고들 난리지..?"),
    Netflix(name: "비밀의 숲", imagename: "비밀의 숲", scoreStar: "★★★☆☆", description: "와..조승우 연기 왜이렇게 잘하냐...마치유가 추천해줘서 봤음"),
    Netflix(name: "퀸스 갬빗", imagename: "퀸스 갬빗", scoreStar: "★★★★☆", description: "재밌음, 나는 천재물이 좋더라. 패션감각 굿굿, 얼굴도 이쁨, 재밌게 봄", isFavorite: true),
    Netflix(name: "이태원 클라쓰", imagename: "이태원 클라쓰", scoreStar: "★★★☆☆", description: "박새로이가 이러쿵 저러쿵 아 재밌다 재밌다 정말 재밌다!")

]

