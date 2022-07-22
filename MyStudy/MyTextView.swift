//
//  MyTextView.swift
//  MyStudy
//
//  Created by 유경덕 on 2022/07/22.
//

import SwiftUI

struct MyTextView: View {
    
    //@State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var index: Int = 0
    
    //배경색 배열 준비
    private var backgroundColors = [
        Color.red,
        Color.yellow,
        Color.white,
        Color.purple,
        Color.green,
        Color.orange,
        Color.pink
    ]
    
    var body: some View{
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .fontWeight(.bold)
                .font(.system(size: 30))
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
            Spacer()
            
        } //VStack
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            if (self.index == self.backgroundColors.count - 1) {
                self.index = 0
            } else {
                self.index += 1
            }
        }
    }
}


struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
