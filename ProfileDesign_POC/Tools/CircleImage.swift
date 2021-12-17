//
//  RoundedView.swift
//  ProfileDesign_POC
//
//  Created by Kirito04800 on 13/12/2021.
//

import SwiftUI

struct CircleImage: View {

    var image : Image

    var body: some View {
        HStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit )
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
                .padding(10)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image(systemName: "person.crop.circle.fill"))
            .frame(width: .infinity, height: 888, alignment: .center)
    }
}
