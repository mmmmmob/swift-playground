//
//  DefaultImageView.swift
//  Course Data
//
//  Created by Theppitak M. on 13.05.2024.
//

import SwiftUI

struct DefaultImageView: View {
    var body: some View {
        HStack {
            ProgressView()
                .padding(.trailing, 10)
            HStack {
                Image(systemName: "books.vertical")
                    .font(.title)
                Text("Loading...")
            }
            .fontDesign(.rounded)
            .foregroundStyle(Color.secondary)
        }
        .padding(.vertical, 85)
        .frame(maxWidth: .infinity)
        .background {
            Color.gray
                .opacity(0.4)
        }
    }
}

#Preview {
    DefaultImageView()
}
