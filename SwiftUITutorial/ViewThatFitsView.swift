//
//  ViewThatFitsView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/22.
//

import SwiftUI

struct ViewThatFitsView: View {
    var body: some View {
        
        VStack {
            
            customView()
                .frame(width: 130)
            customView()
                .frame(width: 50)
            customView()
                .frame(width: 80)
        }
    }
    
    
    func customView() -> some View {
        ViewThatFits(in: .horizontal) {
            HStack {
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 10)
                Text("Bar")
                    .background(.red)
            }
            
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 80, height: 10)
            
            Text("Bar")
                .foregroundColor(.green)
        }
    }
}

struct ViewThatFitsView_Previews: PreviewProvider {
    static var previews: some View {
        ViewThatFitsView()
    }
}
