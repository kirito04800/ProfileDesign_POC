//
//  ProfileView.swift
//  ProfileDesign_POC
//
//  Created by Kirito04800 on 13/12/2021.
//

import SwiftUI

struct ProfileViewScrollOffset: View {
    let DEFAULT_SIZE = 200.0
    let MIN_SIZE = 60.0
    @State var size = 200.0
    @State private var offset = CGFloat(0)


    var body: some View {
        GeometryReader { geometry in

            ZStack {
                ScrollViewOffset(.vertical, showIndicators: false, contentOffset: $offset) {

                    Color.clear
                        .frame(width: nil, height: DEFAULT_SIZE)
                        .padding(8)

                    CardView(title: "User" , icon: Image(systemName: "person.crop.circle.fill"), details: AnyView(PersonalInfo()))
                        .padding(.trailing, 16)
                        .padding(.leading,16)

                    CardView(title: "AppInfo" , icon: Image(systemName: "info.circle").renderingMode(.original), details: AnyView(PersonalInfo()))
                        .padding(.trailing, 16)
                        .padding(.leading,16)

                    CardView(title: "Favorites" , icon: Image(systemName: "star.circle").renderingMode(.original), details: AnyView(PersonalInfo()))
                        .padding(.trailing, 16)
                        .padding(.leading,16)

                    CardView(title: "Legal Infos" , icon: Image(systemName: "info.circle.fill").renderingMode(.original), details: AnyView(PersonalInfo()))
                        .padding(.trailing, 16)
                        .padding(.leading,16)

                    Spacer()

                    Button(action: logOut) {
                        Text("LogOut")
                            .foregroundColor(Color.white)
                            .padding()
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color.red)
                    )
                    .padding()
                }
                .ignoresSafeArea()
                .frame(width: nil, height: nil)
                .onChange(of: offset, perform: { _ in
                    computeImageSize()
                })

                VStack {
                    ZStack {
                        Color.white
                            .background(
                                Rectangle()
                                    .shadow(color: .gray, radius: 4)
                                    .mask(Rectangle().padding(.bottom, -4))
                            )

                        CircleImage(image: Image(systemName: "person.crop.circle.fill"))
                    }
                    .frame(width: nil, height: size)
                    Spacer()
                }
                .ignoresSafeArea()
            }
            .padding(.top, 10)
        }
    }

    func logOut() {
        //logOut
    }

    func computeImageSize() {
        let newSize = DEFAULT_SIZE - (offset)
        size = min(max(newSize, 60), DEFAULT_SIZE)
    }
}

struct ProfileViewScrollOffset_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewScrollOffset()
    }
}
