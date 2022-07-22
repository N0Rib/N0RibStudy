//
//  ContentView.swift
//  MyStudy
//
//  Created by 유경덕 on 2022/07/22.
//

import SwiftUI

struct ContentView: View {
    
    //@State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    //몸체
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    MyVStackView()
                    MyVStackView()
                    MyVStackView()
                }//HStack
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.red : Color.black)
                
                //탭 재스처 추가
                .onTapGesture {
                    //애니메이션과 함께
                    withAnimation {
                        self.isActivated.toggle()
                    }
                } //HStack
                
                //네비게이션 버튼 링크
                NavigationLink(destination: MyTextView()) {
                    Text("Navigetion")
                        .fontWeight(.bold)
                        .padding(10)
                        .font(.system(size: 35))
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(25)
                }
            } //VStack
            
        } //NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
