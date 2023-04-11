//
//  Simple.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/03/29.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        
        VStack {
            GroupBox(label: Text("Label"), content: {
                VStack {
                    Text("content")
                    Text("content")
                    Text("content")
                }
            })
            
            GroupBox("ddd") {
                VStack {
                    Text("content")
                    Text("content")
                    Text("content")
                }
            }
            .padding()            
        }
        
    }
}

struct SimpleView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleView()
    }
}
