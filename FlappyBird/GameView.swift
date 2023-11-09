//
//  ContentView.swift
//  FlappyBird
//
//  Created by Dmitry Parhomenko on 06.11.2023.
//

import SwiftUI

struct GameView: View {
    // расположение птички
    private let birdPosition = CGPoint(x: 100, y: 350)
    // рандом размера для верхней трубы
    private let topPipeHeigh = CGFloat.random(in: 100...500)
    // ширина трубы
    private let pipeWidth: CGFloat = 100
    // промежуток между трубами
    private let pipeSpacing: CGFloat = 100
    // размер птички
    private let birdSize: CGFloat = 70
    // величина сдвига трубы
    private let pipeOffSet: CGFloat = 0
    // колличество очков
    private let scores = 0
    
    var body: some View {
        // контейнер, позволяет обращяться к геометрическим величинам
        GeometryReader { geometry in
            // стэк позволяет отобразить заголовок экрана
            NavigationStack {
                // стэк с наложением элементов
                ZStack {
                    Image(.flappyBirdBackground)
                        // сбрасываем размер к родительскому экрану
                        // (вписываем в экран)
                        .resizable()
                        // растягиваем на весь экран
                        .ignoresSafeArea()
                        // отступ с параметрами по краям
                        .padding(
                            EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: -50,
                                trailing: -20
                            )
                        )
                    
                    BirdView(birdSize: birdSize)
                        .position(birdPosition)
                    
                    PipeView(
                        topPipeHeigh: topPipeHeigh,
                        pipeWidth: pipeWidth,
                        pipeSpacing: pipeSpacing
                    )
                    // перемещаем трубы по оси Х
                    .offset(x: geometry.size.width + pipeOffSet)
                    
                }
                //создаем окошко (toolbar)
                .toolbar {
                    // элементы интерфейса toolbar:
                    // placement: .toolBarTralling - размещение в верхнем
                    // правом углу
                    ToolbarItem(placement: .topBarTrailing) {
                        //formated - конвертирует число в текст
                        Text(scores.formatted())
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    GameView()
}
