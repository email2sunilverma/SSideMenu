//
//  SLabel.swift
//  SSideMenu
//
//  Created by Sunil Verma on 24/05/24.
//

import SwiftUI

struct SLabel: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.body)
            .foregroundColor(Color("appLabelTextColor"))
    }
}

struct SLabel_Previews: PreviewProvider {
    static var previews: some View {
        SLabel(text: "Label")
    }
}
