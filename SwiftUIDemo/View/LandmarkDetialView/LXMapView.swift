//
//  LXMapView.swift
//  SwiftUIDemo
//
//  Created by admin on 2022/3/2.
//

import SwiftUI
import MapKit
//地图要用UIViewRepresentable
//加载出来的是高德地图
struct LXMapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011_286, longitude: -116.166_868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct LXMapView_Previews: PreviewProvider {
    static var previews: some View {
        LXMapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
