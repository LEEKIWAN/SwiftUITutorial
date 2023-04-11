//
//  AsyncImageTestView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/03/28.
//

import SwiftUI

struct AsyncImageTestView: View {
    private let imageName: String = "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FlI00H%2FbtqXQ6wtwVP%2FUrgHPkbHKxeqWwHIYzoaK1%2Fimg.png"

    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: imageName),
                       transaction: Transaction(animation: .spring(response: 0.7, dampingFraction: 0.5, blendDuration: 0.3))) { phase in
                
                switch phase {
                case .success(let image):
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(.red)
                case .failure:
                    Image(systemName: "exclamationmark.icloud.fill").resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                    
                case .empty:
                    Image(systemName: "photo.circle.fill").resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                @unknown default:
                    Image(systemName: "exclamationmark.icloud.fill").resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                }
                
            }
        }
        
    }
}

struct AsyncImageTestView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageTestView()
    }
}
