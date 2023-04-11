//
//  PresentView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/03/27.
//

import SwiftUI

struct TabViewTest: View {
    var body: some View {
        NavigationStack {
            TabView {
                PresentView()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                    }
                Text("Another Tab")
                    .tabItem {
                        Image(systemName: "2.square.fill")
                    }
            }
        }
    }
}


struct PresentView: View {
    @State var stack = NavigationPath()
    @State var presentingModal = false
    
    var body: some View {
        NavigationStack(path: $stack) {
            ZStack {
                Color.purple
                VStack {
                    NavigationLink(value: "hi") {
                        Image(systemName: "person")
                    }
                    .navigationDestination(for: String.self) { value in
                        PushedView(stack: $stack)
                    }
                    
                }
            }
        }
    }
}

struct PushedView: View {
    @Binding var stack: NavigationPath
    
    var body: some View {
        ZStack {
            Color.red
        
            VStack {
                NavigationLink(value: Color.red) {
                    Image(systemName: "person")
                }
                .navigationDestination(for: Color.self) { value in
                    Text("Hello")
                }
                
                
                Button {
                    stack.removeLast()
                } label: {
                    Text("pop")
                }

                
            }

        }
    }
}




struct TabViewTest_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTest()
    }
}
