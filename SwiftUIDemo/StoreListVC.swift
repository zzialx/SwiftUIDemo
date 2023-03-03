//
//  StoreListVC.swift
//  SwiftUIDemo
//
//  Created by admin on 2022/2/17.
//

import SwiftUI

struct StoreListVC: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 30){
                Text("123")
                    .font(.largeTitle)
                    .foregroundColor(Color.orange);
                Text("123")
                    .font(.largeTitle)
                    .foregroundColor(Color.orange);
                Text("12397979979")
                    .font(.largeTitle)
                    .foregroundColor(Color.orange);
            }
            
        }
        .padding()
        .navigationBarTitle("门店列表", displayMode: .inline)
        .navigationBarItems(
            leading:
                       Button("返回") {
                           
                       },
                           trailing:
                               Button("添加") {
                                   print("111")
                               }
                           
                       )
    }
}

struct StoreListVC_Previews: PreviewProvider {
    static var previews: some View {
        StoreListVC()
    }
}
