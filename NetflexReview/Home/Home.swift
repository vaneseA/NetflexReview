//
//  Home.swift
//  NetflexReview
//
//  Created by DK on 2022/02/09.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            NetflixRow(netflix: NetflixSamples[0])
            NetflixRow(netflix: NetflixSamples[1])
            NetflixRow(netflix: NetflixSamples[2])

           
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
