//
//  FocusStateView.swift
//  SwiftUITutorial
//
//  Created by 이기완 on 2023/03/30.
//

import SwiftUI

struct FocusStateView: View {
    
    enum Field: Hashable {
        case username
        case password
    }
    
    @State private var username = ""
    @State private var password = ""
    
    @FocusState private var focusedField: Field?
    
    var body: some View {
        
        VStack {
            TextField("name", text: $username)
                .focused($focusedField, equals: .username)
            
            SecureField("password", text: $password)
                .focused($focusedField, equals: .password)
            
            Button("Login") {
                if username.isEmpty {
                    focusedField = .username
                } else if password.isEmpty {
                    focusedField = .password
                } else {
                    focusedField = nil
                }
            }
       
        }
        
    }
}

struct FocusStateView2: View {
    @State private var checkAmount = 0.0
    @FocusState private var amountIsFocused: Bool
    
    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencySymbol ?? "USD"))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Button {
                    amountIsFocused = false
                } label: {
                    Text("Done")
                }

            }
        }
        .task {
            let _ = print("\(Thread.isMainThread)")
            let _ = print("\(Thread.isMainThread)")
            let _ = print("gff")
        }
        .onAppear {
            let _ = print("gff2")
            
        }
    }
}

struct FocusStateView_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateView2()
    }
}
