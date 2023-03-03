//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by admin on 2021/12/8.
//

import SwiftUI
import SwiftUI
//struct HomeContentView: View {
// /// 触发present的key
// @State var presetnKey = false
// var body: some View {
// //页面设置为垂直布局
// NavigationView(){
// VStack(){
// Spacer()
// NavigationLink("点击文字直接push",destination:FristView())
// Spacer()
// Button("点击按钮触发push的效果"){
// self.presetnKey.toggle()//toggle()可以说是将presetnKey的bool值取反
// }
// Spacer()
// }
// .navigationBarTitle("首页", displayMode: .inline)//设置标题，并固定到导航中间
//// .sheet(isPresented: $presetnKey) {
//// //非全屏模式
//// FristView()
//// }
//
// }
//
// }
//}
//
//struct HomeContentView_Previews: PreviewProvider {
// static var previews: some View {
// HomeContentView()
// }
//}

struct ContentView: View {
    @State var showToast = false
    
    @State var searchText: String = ""
    
    @State var presetnKey = false
    
    var body: some View {
        NavigationView {
//            NavigationLink("点击文字直接push",destination:StoreListVC())
            VStack {
                SearchBar(placeholder: "请输入内容", searchText: searchText) { (text) in
                    print("onChange:\(text)")
                    self.searchText = text
                } onCommit: { (text) in
                    print("onCommit:\(text)")
                    self.searchText = text
                }
                .frame(height:44)
                .background(RoundedRectangle(cornerRadius: 17).foregroundColor(.green))
                .padding()
                Text("Hello, world!")
                    .padding()
                    .foregroundColor(.white)///<设置文本颜色
                    //.font(.largeTitle)--->设置字体，指定字形
                    .font(.system(size: 18 , weight: .regular)) ///<设置字体大小，指定字体大小  weight字体子重
                    .shadow(color: .black, radius: 2,x: 0,y: 15) ///<设置字体阴影 ，color必须要放在radius之前
                    .multilineTextAlignment(.leading) ///<字体对齐方式 center  居中 trailing 居右   leading  居左
                    .lineLimit(0) ///<行数限制数量  0 代表不限制
                    .lineSpacing(10.0) ///<行间距
                    ///.rotationEffect(.degrees(20), anchor: UnitPoint(x: 0, y: 0))///<文字2D旋转，不常用
                    ///.rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0)) ///<文字3D旋转，不常用
                    .background(Color.red) ///<画布的背景颜色
                    .cornerRadius(20) ///<圆角设置的方法
                HStack {
                    Text("123")
                    Text("456")
                } ///<横向排列 
                VStack {
                    Text("123")
                    Text("456")
                }///<纵向排列
                ZStack {
                    Text("789")
                    Text("123")
                }///<上下排列
                ///
                ///  NavigationLink("Purple", destination: ColorDetail(color: .purple))
//                NavigationLink("首页", destination: StoreListVC(), isActive: $presetnKey)
                NavigationLink("首页", destination: LandmarkList(), isActive: $presetnKey)

                Button(action: {
                            self.showToast.toggle()  ///<点击事件
                        }, label: {
                            Text("按钮")
                                .foregroundColor(.orange) ///<按钮的字体颜色，按钮的text控件设置方法和Text一样
                        })
                        .toast(isShow: $showToast, info: "请求成功")
                Button(action: {
                    self.presetnKey.toggle()//toggle()可以说是将presetnKey的bool值取反
                        }, label: {
                            Text("push_BTN")
                                .foregroundColor(.orange) ///<按钮的字体颜色，按钮的text控件设置方法和Text一样
                        })
//
                        
                VStack {
                  HStack {
                    Text("Target Color Block")
                    Text("Guess Color Block")
                  }

                  Text("Hit me button")

                  VStack {
                    Text("Red slider")
                    Text("Green slider")
                    Text("Blue slider")
                  }
                }
                Spacer() ///<空格间隔
            }
        }
        .navigationBarTitle("首页", displayMode: .inline)//设置标题，并固定到导航中间
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
