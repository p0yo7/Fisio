//
//  TextEditView.swift
//  Fisio
//
//  Created by Nats Salgado on 15/03/24.
//

import SwiftUI

struct TextEditView: View {
    @State private var isEditing = false
    @State private var editedValue = ""
    
    var title: String
    @State var currentValue: String
    
    var body: some View {
        HStack {
            Text(title + ":")
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.trailing, 8)
            
            VStack {
                HStack {
                    if isEditing {
                        TextField("Enter \(title)", text: $editedValue)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                    } else {
                        Text(currentValue)
                            .foregroundColor(.primary)
                            .padding(.vertical, 10)
                            .frame(width: 250)
                    }
                    
                    Button(action: {
                        isEditing.toggle()
                        if isEditing == false {
                            currentValue = editedValue
                        }
                    }) {
                        Image(systemName: isEditing ? "checkmark.circle.fill" : "pencil")
                            .font(.system(size: 25))
                            .foregroundColor(.blue)
                            .padding(.leading, 8)
                    }
                }
                .padding(.horizontal, 30)
                .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.purple.opacity(0.3)]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
            }
        }
        .frame(width: 500)
        .padding(.vertical, 5)
    }
}



#Preview {
    TextEditView(title: "Username", currentValue: "lalaallalksskskkskall")
}
