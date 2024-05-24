//
//  SSideMenuApp.swift
//  SSideMenu
//
//  Created by Sunil Verma on 24/05/24.
//

import SwiftUI

@main
struct SSideMenuApp: App {
    var body: some Scene {
        WindowGroup {
                SMainTabbedView()
                    .navigationViewStyle(.stack)
        }
    }
}

