//
//  STermsAndConditionView.swift
//  SSideMenu
//
//  Created by Sunil Verma on 24/05/24.
//

import SwiftUI

struct STermsAndConditionView: View {
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
                    SNavLabel(text: .constant("T&C"))
                    Spacer()
                }.padding(.horizontal)
                HStack {
                    List {
                        SLabel(text: "T&C")
                    }
                    .listStyle(.plain)
                        .background(Color("appBGColor"))
                }
            } .background(Color("appNavBarColor"))
        }
        .navigationBarBackButtonHidden()
    }
}

struct STermsAndConditionView_Previews: PreviewProvider {
    static var previews: some View {
        STermsAndConditionView(presentSideMenu: .constant(true))
    }
}
