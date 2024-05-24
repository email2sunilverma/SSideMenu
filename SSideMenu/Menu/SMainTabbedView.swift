//
//  SMainTabbedView.swift
//  SSideMenu
//
//  Created by Sunil Verma on 24/05/24.
//

import SwiftUI

struct SMainTabbedView: View {
    
    @State var presentSideMenu = false
    @State var selectedSideMenuTab = 0
    @State private var showAlert = false

    var body: some View {
        ZStack{
            switch $selectedSideMenuTab.wrappedValue {
            case SSideMenuRowType.home.rawValue:
                SHomeView(presentSideMenu: $presentSideMenu)
            case SSideMenuRowType.profile.rawValue:
                    SProfileView(presentSideMenu: $presentSideMenu)
            case SSideMenuRowType.termsAndServices.rawValue:
                STermsAndConditionView(presentSideMenu: $presentSideMenu)
            
            default:
                SHomeView(presentSideMenu: $presentSideMenu)
            }
            
            SSideMenu(isShowing: $presentSideMenu, content: AnyView(SSideMenuView(selectedSideMenuTab: $selectedSideMenuTab, presentSideMenu: $presentSideMenu)))
        }

    }
}
