//
//  GaugeView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/22.
//

import SwiftUI

struct GaugeView: View {
    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])
    
    var body: some View {
        Gauge(value: 0.4) {
        } currentValueLabel: {
            Text("40%")
                .font(.caption)
        } 
        .gaugeStyle(.accessoryCircular)
        .tint(gradient)
        .padding()

    }
}

struct GaugeView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeView()
    }
}
