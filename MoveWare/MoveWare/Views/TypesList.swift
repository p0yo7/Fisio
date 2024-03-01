//
//  TypesList.swift
//  Mock
//
//  Created by Nats Salgado on 26/02/24.
//

import SwiftUI

struct TypesList: View {
    var body: some View {
        NavigationSplitView {
            List(types) { type in
                NavigationLink {
                    Detail(type: type)
                } label: {
                    Row(type: type)
                }
            }
            .navigationTitle("Types of therapy")
        } detail: {
            Text("Select a therapy for a body part")
        }
    }
}

#Preview {
    TypesList()
}
