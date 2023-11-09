//
//  BirdView.swift
//  FlappyBird
//
//  Created by Dmitry Parhomenko on 06.11.2023.
//

import SwiftUI

struct BirdView: View {
    let birdSize: CGFloat
    
    var body: some View {
        Image(.niceFlappyBird)
            .resizable()
            // делаем равные пропорции по ширине и высоте
            .scaledToFit()
            .frame(width: birdSize, height: birdSize)
    }
}

#Preview {
    BirdView(birdSize: 80)
}
