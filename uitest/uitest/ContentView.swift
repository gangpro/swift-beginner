//
//  ContentView.swift
//  uitest
//
//  Created by KANG on 2021/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            HStack {
                Spacer()
                Text("Hello !!")
                Spacer()
                Text("Hello !!")
                Spacer()
            }
            
            Spacer()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
