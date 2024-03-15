//
//  SettingsView.swift
//  Fisio
//
//  Created by Nats Salgado on 15/03/24.
//

import SwiftUI

struct SettingsView: View {
    @State private var isEditingUsername = false
    @State private var isEditingEmail = false
    @State private var isEditingName = false
    @State private var isEditingLastName = false
    
    var therapist: Therapist = therapist1
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 150))
                    .foregroundColor(.gray)
                    .padding()
                
                Text(therapist.username)
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                    .padding()
                
                Spacer()
            }
            .padding(.leading, 60)
            .padding(.bottom, 40)
            
            Text("Edit Account")
                .font(.system(size: 30))
                .foregroundColor(.gray)
                .fontWeight(.regular)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            TextEditView(title: "Username", currentValue: therapist.username)
            TextEditView(title: "Name", currentValue: therapist.name)
            TextEditView(title: "Last Name", currentValue: therapist.lastName)
            TextEditView(title: "Email", currentValue: therapist.email)
                .padding(.bottom, 40)

            Text("Log Out")
                .font(.system(size: 30))
                .foregroundColor(.gray)
                .fontWeight(.regular)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            ButtonView(title: "Log out") {
            }
            .frame(width: 500)
            .font(.system(size: 25))
            
            
            Spacer()
        }
        .padding()
    }
}




#Preview {
    SettingsView(therapist: therapist1)
}
