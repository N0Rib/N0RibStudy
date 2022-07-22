//
//  ContentView.swift
//  MyStudy
//
//  Created by 유경덕 on 2022/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            MyVStackView()
            MyVStackView()
            MyVStackView()
        }
        .padding()
        .background(Color.red)
        //HStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
