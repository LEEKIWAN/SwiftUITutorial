//
//  ChartsView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/22.
//

import SwiftUI
import Charts


struct ChartsView: View {
    var sampleDownloads: [Download] = [
        Download(day: "Mon", downloads: 100),
        Download(day: "Tue", downloads: 200),
        Download(day: "Wed", downloads: 350),
        Download(day: "Thu", downloads: 420),
        Download(day: "Fri", downloads: 580),
        Download(day: "Sat", downloads: 90),
        Download(day: "Sun", downloads: 900)
    ]

    var barColor: [Color] = [.red, .black, .blue, .green, .yellow, .purple, .teal]
    
    var body: some View {
        
        Chart(sampleDownloads) { item in
            //1
//            BarMark(x: .value("Day", item.day),
//                    y: .value("Downloads", item.downloads))
//            .foregroundStyle(by: .value("Day", item.day))
//            .annotation() {
//                Image(systemName: "square.and.arrow.down.on.square.fill")
//                    .foregroundStyle(.red)
//            }
            
            //2
//            LineMark(x: .value("Day", item.day),
//                     y: .value("Downloads", item.downloads))
//            .symbol(by: .value("Day", item.day))
//            .interpolationMethod(.catmullRom)
//            .foregroundStyle(by: .value("Day", item.day))
            
            
            //
            AreaMark(x: .value("Day", item.day),
                     y: .value("Downloads", item.downloads))
            .foregroundStyle(.linearGradient(colors: [.red, .clear], startPoint: .top, endPoint: .bottom))
            .interpolationMethod(.catmullRom)
            
//            RuleMark(y: .value("Mid", 250))
//                .foregroundStyle(.green)
            
        }
//        .chartForegroundStyleScale(domain: sampleDownloads.compactMap({ downlod in
//            return downlod.day
//        }), range: barColor)
        .frame(height: 300)
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}


struct Download: Identifiable {
    var id = UUID().uuidString
    var day: String
    var downloads: Double
}

