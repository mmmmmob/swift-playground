//
//  GameView.swift
//  == Main View for User Interaction ==
//  Code History
//
//  Created by Theppitak M. on 30.03.2024.
//

import SwiftUI

struct GameView: View {
    
    // tell SwiftUI with @State wrapper that this property of View protocol (typically immutable props) can be mutate, please redrawn when it changed value.
    //@State var mainColor = GameColor.main
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                
                // numOfQuestion
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                // questionBody + answerbutton
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .background(
            NavigationLink(
                // where the application will navigate to when the game is over
                destination: ScoreView(viewModel: ScoreViewModel(correctGuessed: viewModel.correctGuessed, incorrectGuessed: viewModel.inCorrectGuesses)),
                // configures the NavigationLink to monitor the new gameIsOver property
                isActive: .constant(viewModel.gameIsOver),
                label: {EmptyView()}
            )
        )
        .foregroundStyle(.white)
        .toolbar(.hidden) // remove Back btn
        .environmentObject(viewModel) // pass props value to components
    }
}

#Preview {
    GameView()
}
