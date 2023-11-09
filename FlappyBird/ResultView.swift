//
//  ResultView.swift
//  FlappyBird
//
//  Created by Dmitry Parhomenko on 06.11.2023.
//

import SwiftUI

struct ResultView: View {
    let score: Int
    let highScore: Int
    // задаем кнопку действия
    let resetAction: () -> Void
    
    var body: some View {
        VStack {
            Text("Game Over")
                .font(.largeTitle)
                // отступ
                .padding()
            Text("Score \(score)")
                .font(.title)
            Text("BEST: \(highScore)")
                .padding()
           //  Button - тип даных отвечает за кнопку 
           // (action) - определяет действие
           Button("RESET", action: resetAction)
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                // Закругление углов
                .clipShape(.rect(cornerRadius: 15))
                .padding()
        }
        .background(.white.opacity(0.8))
        .clipShape(.rect(cornerRadius: 20))
        .padding()
    }
}

#Preview {
    ResultView(score: 5, highScore: 8, resetAction: {})
}
