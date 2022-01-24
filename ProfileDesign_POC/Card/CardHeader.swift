//
//  CardHeader.swift
//  ProfileDesign_POC
//
//  Created by Kirito04800 on 13/12/2021.
//

import SwiftUI

struct CardHeader: View {
    var title: String
    var icon: Image
    @Binding var showDetails: Bool

    var body: some View {
        HStack {
            icon
            Text(title)
            Spacer()
            Button {
                withAnimation(.easeInOut(duration: 0.2)) {
                    showDetails.toggle()
                }
            } label: {
                Label("Graph", systemImage: "chevron.right.circle")
                    .labelStyle(.iconOnly)
                    .imageScale(.large)
                    .rotationEffect(.degrees(showDetails ? 90 : 0))
                    .scaleEffect(showDetails ? 1.5 : 1)
            }
        }
        .padding(.leading, 8)
        .padding(.trailing, 8)
        .padding(.top, 8)
        .onAppear {
        }
    }
}

struct CardHeader_Previews: PreviewProvider {
    @State static var isShowing = false
    static var previews: some View {
        CardHeader(title: "user" , icon: Image(systemName: "person.crop.circle.fill"), showDetails: $isShowing)
            .frame(width: .infinity, height: 400, alignment: .center)
    }
}
