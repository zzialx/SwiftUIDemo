//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by admin on 2022/2/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarkData){ landmark in
            NavigationLink(destination: LandmarkDetial(landmarkModel: landmark)){
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationBarTitle("门店列表", displayMode: .inline)
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
