//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/22.
//


// MARK: - iOS 16.4
// MARK: - https://www.youtube.com/watch?v=5oUg-aDCVBs&t=3s

import SwiftUI
import MapKit

struct DetentsView: View {
    @State private var isShownSheet = false
    var body: some View {
        Map(coordinateRegion: .constant(.init(center: .init(latitude: 37.3357, longitude: -122.0090), latitudinalMeters: 10000, longitudinalMeters: 10000)))
            .ignoresSafeArea()
            .overlay(alignment: .topTrailing) {
                Button {
                    isShownSheet.toggle()
                } label: {
                    Image(systemName: "suit.heart.fill")
                        .font(.title3)
                        .foregroundColor(.red)
                }
                .padding()
                .sheet(isPresented: $isShownSheet) {
//                    Text("Hello, It's me favorites")
//                        .font(.largeTitle.bold())
//                        .presentationDetents([.large, .medium])
                    
                    List {
                        ForEach(1 ..< 20) { index in
                            Text("Row With Index: \(index)")
                        }
                    }
                    .presentationDetents([.small, .medium, .large])
                }
            }
    }
}

extension PresentationDetent {
    static let small = Self.height(100)
}

struct DetentsView_Previews: PreviewProvider {
    static var previews: some View {
        DetentsView()
    }
}
