//
//  ShareLinkView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/22.
//

import SwiftUI

struct ShareLinkView: View {
    var imageFile = ImageFile(image: Image("WaikerLogo"))
    var body: some View {
//        ShareLink(item: URL(string: "https://apple.com")!, subject: Text("f"), message: Text("fd")) {
//            Text("Share Message")
//        }
        
        // MARK: New Share Link
        
        
        ShareLink(item: imageFile, preview: SharePreview("c8c8", image: imageFile.image))
    }
}

struct ShareLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ShareLinkView()
    }
}

struct ImageFile: Transferable {
    var image: Image
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }
}
