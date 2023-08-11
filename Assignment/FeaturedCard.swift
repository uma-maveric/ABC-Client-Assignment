//
//  FeaturedCard.swift
//  Assignment
//
//  Created by Uma Jagdish Patil on 11/08/23.
//

import SwiftUI

struct FeatureCard: View {
    
    let orgImages: Image
    
    var body: some View {
        orgImages
            .resizable()
            .aspectRatio(3/2, contentMode: .fit)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(orgImages: orginazationImages[0])
    }
}
