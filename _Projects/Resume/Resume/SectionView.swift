//
//  SectionText.swift
//  Resume
//
//  Created by Theppitak M. on 02.05.2024.
//

import SwiftUI

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}

struct SectionView: View {
    let sectionText: String
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("\(sectionText)")
                .font(.system(.title2, design: .rounded, weight: .semibold))
            Rectangle()
                .fill(Color.gray)
                .frame(width: UIScreen.screenWidth / 1.05, height: 1)
        }
    }
}

#Preview {
    SectionView(sectionText: "👨🏻‍💻 Work Experiences")
}
