//
//  PersonalInfo.swift
//  ProfileDesign_POC
//
//  Created by Kirito04800 on 13/12/2021.
//

import SwiftUI

struct PersonalInfo: View {
    var body: some View {
        VStack {
            HStack {
                Text("Name")
                Spacer()
                Text("John")
            }
            HStack {
                Text("Family Name")
                Spacer()
                Text("Doe")
            }
            HStack {
                Text("Age")
                Spacer()
                Text("26")
            }
        }
        .padding()
    }
}

struct PersonalInfo_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfo()
    }
}
