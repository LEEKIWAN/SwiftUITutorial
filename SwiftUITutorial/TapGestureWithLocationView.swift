//
//  TapGestureWithLocationView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/22.
//

import SwiftUI

struct TapGestureWithLocationView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.red)
            .frame(height: 300)
            .padding()
            .onTapGesture(coordinateSpace: .global) { point in
                print(point)
            }
    }
}

struct TapGestureWithLocationView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureWithLocationView()
    }
}
