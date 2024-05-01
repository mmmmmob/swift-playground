//
//  ContentView.swift
//  Resume
//
//  Created by Theppitak M. on 27.04.2024.
//

import SwiftUI

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                // Header
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 20) {
                    Image("profilePic")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    VStack(spacing: 5) {
                        Text("Theppitak Maneepong")
                            .font(.system(.title, design: .rounded, weight: .black))
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 165, height: 1)
                        Text("A newcomer at the crossroad\n of tech and creativity.")
                            .font(.system(.caption, design: .rounded, weight: .bold))
                    }
                    .multilineTextAlignment(.trailing)
                }
                .padding()
                // Intro
                Text("Former creative copywriter and project manager, now on my way to becoming a developer. On the right side of my brain lies the love of fun and goofy ways to communicate things, while on the left is the love to find ways to manage unmanageable problems into the perfect march.")
                    .font(.system(.caption, design: .rounded, weight: .medium))
                    .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
                // Work
                VStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("👨🏻‍💻 Work Experiences")
                            .font(.system(.title2, design: .rounded, weight: .semibold))
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: UIScreen.screenWidth / 1.05, height: 1)
                    }
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text("Self-employed")
                                .font(.system(.title3, design: .rounded, weight: .semibold))
                            Text("Creative Copywriter")
                                .font(.system(.caption, design: .rounded, weight: .light))
                        }
                        Spacer()
                        Text("2023 - Presents")
                            .font(.system(.caption, design: .rounded, weight: .regular))
                    }
                    .padding()
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text("Glow Creative")
                                .font(.system(.title3, design: .rounded, weight: .semibold))
                            Text("Project Manager and Operation Management")
                                .font(.system(.caption, design: .rounded, weight: .light))
                        }
                        Spacer()
                        Text("2018 - 2022")
                            .font(.system(.caption, design: .rounded, weight: .regular))
                    }
                    .padding()
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text("The 101 Percent")
                                .font(.system(.title3, design: .rounded, weight: .semibold))
                            Text("Content Creator")
                                .font(.system(.caption, design: .rounded, weight: .light))
                        }
                        Spacer()
                        Text("2017 - 2018")
                            .font(.system(.caption, design: .rounded, weight: .regular))
                    }
                    .padding()
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text("daypoets")
                                .font(.system(.title3, design: .rounded, weight: .semibold))
                            Text("Editorial Writer")
                                .font(.system(.caption, design: .rounded, weight: .light))
                        }
                        Spacer()
                        Text("2016 - 2017")
                            .font(.system(.caption, design: .rounded, weight: .regular))
                    }
                    .padding()
                }
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
                // Educations
                VStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("📚 Educations")
                            .font(.system(.title2, design: .rounded, weight: .semibold))
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: UIScreen.screenWidth / 1.05, height: 1)
                    }
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text("Junior Software Developer Bootcamp")
                                .font(.system(.title3, design: .rounded, weight: .semibold))
                            Text("Generation Thailand")
                                .font(.system(.caption, design: .rounded, weight: .light))
                        }
                        Spacer()
                        Text("Nov 2023 - Feb 2024")
                            .font(.system(.caption, design: .rounded, weight: .regular))
                    }
                    .padding()
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text("B.A Communication Arts\nJournalism")
                                .font(.system(.title3, design: .rounded, weight: .semibold))
                            Text("Chulalongkorn University")
                                .font(.system(.caption, design: .rounded, weight: .light))
                        }
                        Spacer()
                        Text("2011 - 2014")
                            .font(.system(.caption, design: .rounded, weight: .regular))
                    }
                    .padding()
                }
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
                Spacer()
                // Footer
                Text("© 2024 Theppitak M.")
                    .font(.system(.footnote, design: .rounded, weight: .light))
                    .foregroundStyle(Color.gray)
            }
        }
    }
}


#Preview {
    ContentView()
}
