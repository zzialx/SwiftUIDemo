//
//  Toast.swift
//  SwiftUIDemo
//
//  Created by admin on 2021/12/8.
//

import SwiftUI

extension View {
    
    /// 调用方法
    /// - Parameters:
    ///   - isShow: 展示参数
    ///   - info: 标题
    ///   - duration: 时间
    /// - Returns: 返回
    func toast(isShow:Binding<Bool>, info:String = "",  duration:Double = 0.5) -> some View {
        ZStack {
            self
            if isShow.wrappedValue {
                ToastView(isShow:isShow, info: info, duration: duration)
            }
        }
        
     }
    func showToastView(isShow:Binding<Bool>,msg:String = "",duration:Double = 0.5) -> some View {
        ZStack{
            self
            if isShow.wrappedValue{
                ToastView(isShow:isShow, info: msg, duration: 0.5)
            }
        }
    }
        
}

struct ToastView: View {
    
    @Binding var isShow:Bool
    let info: String
    let tilte: String
    init(isShow:Binding<Bool>,info: String = "", duration:Double = 0.5) {
        self._isShow = isShow
        self.info = info
        self.tilte = info

        changeShow(duration: duration)
    }

    private func changeShow(duration:Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            self.isShow = false
        }
    }
    
    var body: some View {
        ZStack {
            Text(tilte)
                .foregroundColor(.orange)
                .frame(minWidth: 80, alignment: Alignment.center)
                .zIndex(1.0)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.black))
            
        }
        .padding()
        .animation(.easeIn(duration: 0.3))
        .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct ToastView_Previews: PreviewProvider {
    static var previews: some View {
        ToastView(isShow: .constant(true), info: "ToastView")
    }
}
#endif
