//
//  SMenuButton.swift
//  SSideMenu
//
//  Created by Sunil Verma on 24/05/24.
//

import SwiftUI

struct SMenuButton: View {
    let action: () -> Void
    @State var image: Image = Image("menu")
    @State var size: CGSize = CGSize(width: 32, height: 32)
    var body: some View {
        HStack {
            Button(action: action) {
                image
                    .resizable()
                    .frame(width: size.width, height: size.height)
            }
            .buttonStyle(.automatic)
        }
    }
}

struct SMenuButton_Previews: PreviewProvider {
    static var previews: some View {
        SMenuButton {
            
        }
    }
}
