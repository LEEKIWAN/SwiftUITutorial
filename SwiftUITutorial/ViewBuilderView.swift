//
//  ViewBuilderView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/02/23.
//

import SwiftUI

enum StockType {
    case etf
    case stock
}

struct ViewBuilderView: View {
    var body: some View {
        
        view(for: .etf)
    }
    
    
    @ViewBuilder
    func view(for type: StockType) -> some View {
        switch type {
        case .etf:
            Text("ETF")
        case .stock:
            Text("Stock")
        }
    }
}

struct ViewBuilderView_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderView()
    }
}

