//
//  ContentView.swift
//  Resume
//
//  Created by Theppitak M. on 27.04.2024.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct ContentView: View {
    var body: some View {
        VStack {
            // Header
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 5) {
                Image("profilePic")
                    .resizable()
                    .frame(width: 140, height: 140)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                VStack(spacing: 5) {
                    Text("Theppitak Maneepong")
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .font(.system(.title, design: .rounded, weight: .black))
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 165, height: 1)
                    Text("A newcomer at the crossroad\n of tech and creativity.")
                        .font(.system(.caption, design: .rounded, weight: .bold))
                }
                .multilineTextAlignment(.trailing)
                .padding()
            }
            .padding()
            // Intro
            Text("Former creative copywriter and project manager, now on my way to becoming a developer. On the right side of my brain lies the love of fun and goofy ways to communicate things, while on the left is the love to find ways to manage unmanageable problems into the perfect march.")
                .font(.system(.caption2, design: .rounded, weight: .medium))
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            // Work
            VStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Text("👨🏻‍💻 Work Experiences")
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: UIScreen.screenWidth / 1.1, height: 1)
                }
                HStack(alignment: .center, spacing: UIScreen.screenWidth / 4) {
                    VStack(alignment: .leading) {
                        Text("Self-employed")
                            .font(.system(.title3, design: .rounded, weight: .semibold))
                        Text("Creative Copywriter")
                            .font(.system(.callout, design: .rounded, weight: .light))
                    }
                    Text("2023 - Presents")
                        .font(.system(.caption, design: .rounded, weight: .regular))
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
            // Educations
            VStack(alignment: .leading) {
                Text("📚 Educations")
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: UIScreen.screenWidth / 1.1, height: 1)
            }
            .padding(.vertical)
            // Skills
            VStack(alignment: .leading) {
                Text("⚒️ Skills")
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: UIScreen.screenWidth / 1.1, height: 1)
            }
            .padding(.vertical)
            // Contact
            VStack(alignment: .leading) {
                Text("☎️ Contact")
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: UIScreen.screenWidth / 1.1, height: 1)
            }
            .padding()
            Spacer()
            // Footer
            Text("© 2024 Theppitak M.")
                .font(.system(.footnote, design: .rounded, weight: .light))
        }
    }
}

#Preview {
    ContentView()
}
