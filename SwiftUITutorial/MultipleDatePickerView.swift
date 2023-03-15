//
//  MultipleDatePickerView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/22.
//

import SwiftUI

struct MultipleDatePickerView: View {
    
    @State private var selectedDates: Set<DateComponents> = []
    
    var body: some View {
        MultiDatePicker("Title", selection: $selectedDates)
            .frame(height: 400)
            .padding(20)
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white.shadow(.drop(radius: 10)))
            }
            .padding()
    }
}

struct MultipleDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleDatePickerView()
    }
}
