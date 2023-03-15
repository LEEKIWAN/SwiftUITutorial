//
//  ScrollViewEnable&KeyboardView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/22.
//

import SwiftUI

struct ScrollViewEnable_KeyboardView: View {
    @State private var text: String = ""
    @State private var isScrollEnabled = false
    var body: some View {
        ScrollView {
            VStack {
                TextField("Title222", text: $text)
                
                ForEach(0 ..< 20) { _ in
                    Rectangle()
                        .fill(.red)
                        .frame(height: 200)
                }
            }
        }
        .scrollDismissesKeyboard(.interactively)
        .disabled(isScrollEnabled)
//        .onTapGesture {
//            isScrollEnabled.toggle()
//        }
    }
}

struct ScrollViewEnable_KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewEnable_KeyboardView()
    }
}
