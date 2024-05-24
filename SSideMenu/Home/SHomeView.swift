//
//  SHomeView.swift
//  SSideMenu
//
//  Created by Sunil Verma on 24/05/24.
//

import SwiftUI

struct SHomeView: View {
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
                    SNavLabel(text: .constant("Home"))
                    Spacer()
                }.padding(.horizontal)
                HStack {
                    List {
                        SLabel(text: "HOME")
                    }
                    .listStyle(.plain)
                        .background(Color("appBGColor"))
                }
            } .background(Color("appNavBarColor"))
        }
        .navigationBarBackButtonHidden()
    }
}


struct SHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SHomeView(presentSideMenu: .constant(true))
    }
}
