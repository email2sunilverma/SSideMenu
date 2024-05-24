//
//  SProfileView.swift
//  SSideMenu
//
//  Created by Sunil Verma on 24/05/24.
//

import SwiftUI

struct SProfileView: View {
    @Binding var presentSideMenu: Bool
    @State private var isPopoverPresented = false
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    SMenuButton {
                        presentSideMenu.toggle()
                    }
                    Spacer()
                    SNavLabel(text: .constant("Profile"))
                    Spacer()
                }.padding(.horizontal)
                HStack {
                    List {
                        SLabel(text: "Profile")
                    }
                    .listStyle(.plain)
                        .background(Color("appBGColor"))
                }
            } .background(Color("appNavBarColor"))
        }
        .navigationBarBackButtonHidden()
    }
}

struct SProfileView_Previews: PreviewProvider {
    static var previews: some View {
        SProfileView(presentSideMenu: .constant(true))
    }
}
