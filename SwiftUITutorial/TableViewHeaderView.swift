//
//  TableViewHeaderView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/03/28.
//

import SwiftUI

struct TableViewHeaderView: View {
    var body : some View {
        
        VStack {
            
            Rectangle()
                .frame(height: 50)
            
            List {
                Section {
                    Image("WaikerLogo")
                        .resizable()
                        .frame(height: 200)
                }
                
                Section {
                    
                    TableViewCell()
                    
                    TableViewCell()
                    TableViewCell()
                    TableViewCell()
                    TableViewCell()
                    
                } header: {
                    ZStack {
                        HStack(alignment: .center) {
                            Image(systemName: "star")
                            Text("Hello")
                            Spacer()
                        }
                        .frame(height: 50)
                        
                    }
                }
                
                Section {
                    TableViewCell()
                    TableViewCell()
                    TableViewCell()
                    TableViewCell()
                    TableViewCell()
                } header: {
                    ZStack {
                        HStack(alignment: .center) {
                            Image(systemName: "star")
                            Text("ffff")
                            Spacer()
                        }
                        .frame(height: 50)
                        
                    }
                }
                
                
                Section {
                    TableViewCell()
                    TableViewCell()
                    TableViewCell()
                    TableViewCell()
                    TableViewCell()
                } header: {
                    ZStack {
                        HStack(alignment: .center) {
                            Image(systemName: "star")
                            Text("ffff")
                            Spacer()
                        }
                        .frame(height: 50)
                        
                    }
                }
            }
            .listStyle(.plain)
        }
                
    }
}


struct TableViewCell: View {
    var body: some View {
        HStack(alignment: .center) {
            AsyncImageTestView()
                .frame(width: 20, height: 20)
                
            let _ = print("fff")
            Text("Hello Word")
                .font(.callout)
            
        }
//        .frame(height: 40)
    }
}

struct TableViewHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TableViewHeaderView()
    }
}
