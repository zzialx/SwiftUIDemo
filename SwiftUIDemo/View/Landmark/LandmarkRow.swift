//
//  LandmarkRow.swift
//  SwiftUIDemo
//
//  Created by admin on 2022/2/22.
//

import SwiftUI

struct LandmarkRow: View {
    //声明一个对象
    var landmark: Landmark
    var body: some View {
        HStack(){
            landmark.image.resizable()
                .frame(width: 50, height: 50, alignment: .center)
            Text(landmark.name)
            Spacer()
        }
    }
}
//步骤1 添加landmark属性做为LandmarkRow视图的一个存储属性。当添加landmark属性后，预览视图可能会停止工作，因为LandmarkRow视图初始化时需要有一个landmark实例。要想修复预览视图，需要修改Preview Provider
//步骤2 在LandmarkRow_Previews的静态属性previews中给LandmarkRow初始化器中传入landmark参数，这个参数使用landmarkData数组的第一个元素。预览视图当前显示Hello, Worl
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
        //自定义大小
//            .previewLayout(.fixed(width: 300, height: 70))
    }
}
