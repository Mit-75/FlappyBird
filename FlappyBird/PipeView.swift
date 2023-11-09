//
//  PipeView.swift
//  FlappyBird
//
//  Created by Dmitry Parhomenko on 06.11.2023.
//

import SwiftUI

struct PipeView: View {
    let topPipeHeigh: CGFloat
    let pipeWidth: CGFloat
    let pipeSpacing: CGFloat
    
    
    var body: some View {
        // контейнер, позволяет обращяться к геометрическим величинам
        // родительского ппредставления (экран)
        GeometryReader { geometry in
            // иобщая высота труб (без промежутка)
            let availableHeight = geometry.size.height - pipeSpacing
            // высота нижней трубы
            let bottomPipeHeidht = availableHeight - topPipeHeigh
            //вертикальный стэк
            VStack{
                //верхняя труба
                Image(.niceFlappyBirdPipe)
                // сбрасываем размер к родительскому экрану (вписываем в экран)
                    .resizable()
                // переворот на 180 градусов
                    .rotationEffect(.degrees(180))
                // задаем размеры
                    .frame(width: pipeWidth, height: topPipeHeigh)
                // раздвигает между собой элементы на максимально возможное
                // расстояние
                Spacer()
                    .frame(height: pipeSpacing)
                Image(.niceFlappyBirdPipe)
                    .resizable()
                    .frame(width: pipeWidth, height: bottomPipeHeidht)
            }
        }
    }
}
#Preview {
    PipeView(topPipeHeigh: 300, pipeWidth: 100, pipeSpacing: 100)
}
