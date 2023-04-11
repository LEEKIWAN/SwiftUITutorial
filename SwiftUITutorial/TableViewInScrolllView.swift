//
//  TableViewInScrolllView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/03/24.
//

import SwiftUI

struct TableViewInScrolllView: View {
    var body: some View {
        
        
        
        GeometryReader { proxy in
            ScrollView {
                HStack {
                    Rectangle()
                        .frame(width: proxy.frame(in: .local).width / 2, height: 100)
                    Text("sdf")
                        .frame(width: proxy.frame(in: .local).width / 2, height: 100)
                        .background(.red)
                }
                
            }
        }
        
        
    }
}

struct TableViewInScrolllView_Previews: PreviewProvider {
    static var previews: some View {
        TableViewInScrolllView()
    }
}
