//
//  FontAnimationView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/23.
//

import SwiftUI

struct FontAnimationView: View {
    @State private var isAnimated: Bool = false
    
    var body: some View {
        NavigationStack {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(isAnimated ? .black : .thin)
                .foregroundColor(isAnimated ? .yellow : .red)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 1)) {
                        isAnimated.toggle()
                    }
                }
                .navigationTitle("Title")
                .toolbarBackground(Color.red, for: .automatic)
                .toolbarBackground(.visible, for: .automatic)
//                .toolbarBackground(UIColor.red, for: .navigationBar)
        }
        
    
    }
}

struct FontAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        FontAnimationView()
    }
}
