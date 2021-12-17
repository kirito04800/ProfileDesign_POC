//
//  ProfileView.swift
//  ProfileDesign_POC
//
//  Created by Kirito04800 on 13/12/2021.
//

import SwiftUI

struct ProfileView: View {
    @State var size = 200.0

    var body: some View {
        GeometryReader { geometry in
            ScrollView() {
                    CircleImage(image: Image(systemName: "person.crop.circle.fill"))
                        .frame(width: size, height: size, alignment: .center)

                    Divider()
                        .padding(16)

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
//                }
//                .frame(width: geometry.size.width, height: geometry.size.height)
            }
            .ignoresSafeArea()
            .frame(width: .infinity, height: .infinity)
        }
    }

    func logOut() {
        //logOut
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
