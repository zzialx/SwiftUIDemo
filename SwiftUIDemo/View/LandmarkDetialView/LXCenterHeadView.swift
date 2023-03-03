//
//  LXCenterHeadView.swift
//  SwiftUIDemo
//
//  Created by admin on 2022/3/2.
//

import SwiftUI

struct LXCenterHeadView: View {
    var headImage: Image
    var body: some View {
        headImage
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct LXCenterHeadView_Previews: PreviewProvider {
    static var previews: some View {
        LXCenterHeadView(headImage: Image("Turtle Rock"))
    }
}
