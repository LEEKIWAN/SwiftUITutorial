//
//  RedactView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/23.
//

import SwiftUI

struct RedactView: View {
    @State private var isLoading = false
    var body: some View {
        sampleView
            .redacted(reason: isLoading ? .placeholder : .privacy)
    }
    
    
    var sampleView: some View {
        VStack(alignment: .leading) {
            Image("WaikerLogo")
                .resizable()
                .frame(width: 45, height: 45)
                .background(Color.blue)
                .clipShape(Circle())
                .unredacted()
            
            Text("What is Lorem Ipsum?")
                .font(.callout.bold())

            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                .font(.caption)
                .foregroundColor(.gray)
            
            Button("Done") {
                isLoading.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(.cyan)
            
            
        }
        .frame(width: 200)
    }
}

struct RedactView_Previews: PreviewProvider {
    static var previews: some View {
        RedactView()
    }
}
