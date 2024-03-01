//
//  Detail.swift
//  Mock
//
//  Created by Nats Salgado on 26/02/24.
//

import SwiftUI

struct Detail: View {
    var type : Type
    
    var body: some View {
        VStack{
            Text(type.name)
            
            Link(destination: URL(string: type.videoURL)!, label: {
                Label("Video", systemImage: "play.tv.fill")
            })
        }
    }
}

#Preview {
    Detail(type: types[0])
}
