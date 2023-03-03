//
//  Landmark.swift
//  SwiftUIDemo
//
//  Created by admin on 2022/2/22.
//

import SwiftUI
import CoreLocation
//声明Landmark类型遵循Identifiable协议，因为Landmark类型已经定义了id属性，正好满足Identifiable协议
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: String
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude ,
            longitude: coordinates.longitude
        )
    }
    
}


extension Landmark {
    var image: Image {
        ImageStore.shared.image (name : imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}


