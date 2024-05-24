//
//  SNavLabel.swift
//  SSideMenu
//
//  Created by Sunil Verma on 24/05/24.
//

import SwiftUI

struct SNavLabel: View {
    @Binding var text: String
    var body: some View {
        Text($text.wrappedValue)
            .font(.title3)
            .foregroundColor(Color("appNavBarTitleColor"))
        
    }
}


struct SNavLabel_Previews: PreviewProvider {
    static var previews: some View {
        SNavLabel(text: .constant("Home"))
    }
}
