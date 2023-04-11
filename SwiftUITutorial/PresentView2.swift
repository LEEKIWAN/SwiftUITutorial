//
//  PresentView2.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/03/28.
//

import SwiftUI

struct PresentView2: View {
    @State private var isPresented = false
    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            Text("Hello")
        }
        .sheet(isPresented: $isPresented) {
            Color.red
        }

    }
}

struct PresentView2_Previews: PreviewProvider {
    static var previews: some View {
        PresentView2()
    }
}
