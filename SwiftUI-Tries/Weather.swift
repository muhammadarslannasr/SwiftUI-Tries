//
//  Weather.swift
//  SwiftUI-Tries
//
//  Created by Aaqib Raza on 17/01/2024.
//

import Foundation

struct Weather: Hashable, Identifiable {
    let id = UUID()
    let title: String
    let subTitle: String
    let description: String
    let imageURL: String
}

struct MockData{
    
     static let sampleCity = Weather(title: "Islamabad", subTitle: "Capital Territory", description: "Islamabad, Capital Territory Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", imageURL: "https://1sw-assets.s3.ap-northeast-2.amazonaws.com/banner-1.png");
    
    static let cities = [
        
     Weather(title: "Islamabad", subTitle: "Capital Territory", description: "Islamabad, Capital Territory Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", imageURL: "https://1sw-assets.s3.ap-northeast-2.amazonaws.com/banner-1.png"),
     
     
     Weather(title: "Rawalpindi", subTitle: "Punjab Province", description: "Rawalpindi, Punjab Province Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", imageURL: "https://1sw-assets.s3.ap-northeast-2.amazonaws.com/banner-2.png"),
     
     Weather(title: "Lahore", subTitle: "Punjab Province", description: "Lahore, Punjab Province Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", imageURL: "https://1sw-assets.s3.ap-northeast-2.amazonaws.com/banner-3.png"),
     
     Weather(title: "Karachi", subTitle: "Sindh Province", description: "Karachi, Sindh Province Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", imageURL: "https://1sw-assets.s3.ap-northeast-2.amazonaws.com/banner-4.png"),
        
    ]
    
}
