//
//  LandmarkDetial.swift
//  SwiftUIDemo
//
//  Created by admin on 2022/3/2.
//

import SwiftUI

struct LandmarkDetial: View {
    //数据传递对象
    var landmarkModel: Landmark
    var body: some View {
        VStack{
            LXMapView(coordinate: landmarkModel.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            LXCenterHeadView(headImage: landmarkModel.image)
                .offset(x: 0, y: -130)
                .padding(.bottom,-130)
            VStack(alignment: .leading){
                Text(landmarkModel.name)
                    .font(.title)
                HStack(alignment: .top){
                    Text(landmarkModel.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmarkModel.state)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(landmarkModel.name), displayMode: .inline)
    }
}

struct LandmarkDetial_Previews: PreviewProvider {
    static var previews: some View {
        //必须要设置默认对象
        LandmarkDetial(landmarkModel: landmarkData[0])
    }
}
