//
//  MyVStackView.swift
//  MyStudy
//
//  Created by 유경덕 on 2022/07/22.
//

import SwiftUI

struct MyVStackView: View {
    var body: some View {
        VStack{
            Text("X")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .padding()
            Text("X")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .padding()
            Text("X")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .padding()
            }
            .background(Color.blue)
        //VStack
    }
}

//보여주는 용도
//struct MyVStackView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyVStackView()
//    }
//}

struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
