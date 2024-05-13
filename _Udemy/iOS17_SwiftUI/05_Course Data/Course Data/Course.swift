//
//  Course.swift
//  Course Data
//
//  Created by Theppitak M. on 13.05.2024.
//

import Foundation

/*
    {
         "id": 7,
         "release_date": "2020-10-24",
         "image": "https://zappycode.com/media/course_images/SwiftUI-iOS14-CourseImageBig.png",
         "title": "SwiftUI Apps on All Devices - iPhone, iPad, Mac, Watch & TV",
         "subtitle": "Make Apps and Widgets for iOS 14, macOS 11, watchOS 7 and tvOS 14 using Xcode 12, Swift 5, WidgetKit and Apple Watch",
         "promo_download_url": "https://player.vimeo.com/external/479219070.sd.mp4?s=f1bd4a438f95a8fe67fc3079c11425c814814035&profile_id=164&oauth2_token_id=1370344772",
         "total_video_time": "10.00"
     }
 */

struct Course: Identifiable, Codable {
    var id: Int
    var image: String
    var title: String
    var subtitle: String
    
}
