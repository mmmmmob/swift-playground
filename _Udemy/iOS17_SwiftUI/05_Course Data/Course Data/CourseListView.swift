//
//  CourseListView.swift
//  Course Data
//
//  Created by Theppitak M. on 09.05.2024.
//

import SwiftUI

struct CourseListView: View {
    
    @State var courses: [Course] = []
    
    var body: some View {
        NavigationStack {
            if courses.isEmpty {
                VStack {
                    ProgressView()
                    Text("Working on it...")
                        .fontDesign(.rounded)
                        .onAppear { getCourses() }
                }
            } else {
                ScrollView {
                    VStack {
                        ForEach(courses) { course in
                            CourseTileView(course: course)
                        }
                    }
                }
                .navigationTitle("Courses")
            }
        }
    }
    
    
    func getCourses() {
        if let apiURL = URL(string: "https://zappycode.com/api/courses?format=json") {
            
            let req = URLRequest(url: apiURL)
            //req.httpMethod = "GET" <- default .httpMethod is already GET
            URLSession.shared.dataTask(with: req) { data, response, error in
                if let data {
                    //print(String(data: data, encoding: .utf8) ?? "ERROR")
                    if let dataFromAPI = try? JSONDecoder().decode([Course].self, from: data) {
                        courses = dataFromAPI
                        //print(courses)
                    }
                }
            }.resume()
        }
    }
}

#Preview {
    CourseListView()
}
