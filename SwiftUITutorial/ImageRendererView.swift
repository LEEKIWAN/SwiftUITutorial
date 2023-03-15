//
//  ImageRendererView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/22.
//

import SwiftUI

struct ImageRendererView: View {
    @State var generatedImage: Image?
    
    var body: some View {
    
        VStack {
            Button("Rerderer") {
                let renderer = ImageRenderer(content: sampleView())
                if let image = renderer.uiImage {
                    generatedImage = Image(uiImage: image)
                }
            }

            if let generatedImage = generatedImage {
                generatedImage
            }
            
//            sampleView()
        }
        
        
        
    }
    
    func sampleView() -> some View {
        VStack {
            Image("WaikerLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            Text("waiker")
                .font(.title3.bold())
                .foregroundColor(.red)
        }
        .background(.blue)
        
    }
    
}

struct ImageRendererView_Previews: PreviewProvider {
    static var previews: some View {
        ImageRendererView()
    }
}
