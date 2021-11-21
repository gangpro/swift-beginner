//
//  ContentView.swift
//  ButtonDemo
//
//  Created by KANG on 2021/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            // 버튼 인스턴스 set 1
            // Button instance with closure
            Button("Click Me", action: {
                print("Hello world!")
            })
            
            // 버튼 인스턴스 set 2
            // Button instance with trailing closure
            Button("Click Me") {
                print("Hello World!!")
            }
            
            // 버튼 인스턴스와 라벨 set
            Button(action: {
                print("Hello World!!!")
            }, label: {
                
                HStack {
                    Image(systemName: "pencil")
                    Text("Edit")
                }
                
            })
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
