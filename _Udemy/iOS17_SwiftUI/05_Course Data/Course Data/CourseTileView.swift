//
//  CourseTileView.swift
//  Course Data
//
//  Created by Theppitak M. on 13.05.2024.
//

import SwiftUI

struct CourseTileView: View {
    
    let course: Course
    
    var body: some View {
        AsyncImage(url: URL(string: course.image)) { response in
            switch response {
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
            default:
                DefaultImageView()
            }
        }
        VStack(alignment: .leading) {
            Text(course.title)
                .bold()
                .font(.title2)
                .padding(.bottom, 3)
            Text(course.subtitle)
                .font(.caption)
        }
        .padding()
        .fontDesign(.rounded)
    }
}

#Preview {
    CourseTileView(course: Course(id: 1, image: "hello.com", title: "Test Subject", subtitle: "Culpa amet velit excepteur sint est id adipisicing reprehenderit veniam qui. Dolor aliqua cillum amet qui consequat. Veniam in irure veniam Lorem tempor elit id ad culpa ea ad do occaecat deserunt. "))
}
