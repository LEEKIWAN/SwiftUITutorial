//
//  LayoutTutorial.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/24.
//

import SwiftUI

struct LayoutTutorial: View {
    var body: some View {
        ZStack {
            Color.red
            Text("Hello, World!")
                .padding()
                .background(Color.blue)
//                .offset(x: 0, y: 1)
//                .position(x: 0, y: 100)
        }

    }
}

struct LayoutTutorial_Previews: PreviewProvider {
    static var previews: some View {
        LayoutTutorial()
    }
}
