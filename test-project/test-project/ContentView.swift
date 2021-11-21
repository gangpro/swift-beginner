//
//  ContentView.swift
//  test-project
//
//  Created by KANG on 2021/11/21.
//

import SwiftUI

// 구조 구조이름: 프로토콜
struct ContentView: View {
    
    // Properties
    var body: some View {
        
        // View Code
        
        // Text 인스턴스
        Text("Hello, world!")
            // .padding 메소드
            .padding()
    }
    
    // Methods
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
                .previewDevice("iPhone 11")
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPod touch (7th generation)")
        }
    }
}
