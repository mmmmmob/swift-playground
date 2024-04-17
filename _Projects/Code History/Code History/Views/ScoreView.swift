//
//  ScoreView.swift
//  == End screen view showing final scores to user
//  Code History
//
//  Created by Theppitak M. on 17.04.2024.
//

import SwiftUI

struct ScoreView: View {
    
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("\(viewModel.percentage) %")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuessed) ✅")
                    Text("\(viewModel.incorrectGuessed) ❌")
                }
                    .font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView(), label: {
                    BottomTextView(str: "Retake Quiz")
                })
            }
            .foregroundColor(.white)
            .toolbar(.hidden)
        }
    }
}

#Preview {
    ScoreView(viewModel: ScoreViewModel(correctGuessed: 3, incorrectGuessed: 4))
}
