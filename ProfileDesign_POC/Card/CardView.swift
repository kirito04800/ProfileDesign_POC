//
//  CardView.swift
//  ProfileDesign_POC
//
//  Created by Kirito04800 on 13/12/2021.
//

import SwiftUI

struct CardView: View {
    var title: String
    var icon: Image
    var details: AnyView
    @State private var showDetail = false

    var body: some View {
        VStack  {
            CardHeader(title: title, icon: icon, showDetails: $showDetail)
            if showDetail {
                Divider()
                    .padding(.leading, 8)
                    .padding(.trailing, 8)
            }
            VStack {
                CardDetails(details: details)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: showDetail ? .none : 0)
                    .clipped()
                    .opacity(1)
                    .clipped()
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 10,style: .continuous)
                .fill(Color.white)
                .shadow(color: .black, radius: 2)
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "user" , icon: Image(systemName: "person.crop.circle.fill"), details: AnyView(PersonalInfo()))
            .frame(width: .infinity, height: 400,alignment: .top)
            .padding()
    }
}
