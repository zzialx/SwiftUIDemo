//
//  SearchView.swift
//  SwiftUIDemo
//
//  Created by admin on 2021/12/9.
//

import SwiftUI

struct SearchView: View {
    
    @State fileprivate var searchText: String = ""
    
    var body: some View {
        VStack {
            SearchBar(placeholder: "请输入标题/正文名称", onCommit:  { (search) in
                self.searchText = search
                // do something ,example: Request
            })
                        .frame(height:44)
//                        .background(RoundedRectangle(cornerRadius: 17).foregroundColor(.hexString(hex: "#EBF2FF")))
            .background(RoundedRectangle(cornerRadius: 17).foregroundColor(.orange))
                        .padding()
        }
        Spacer()
    }
}

#if DEBUG
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
#endif
