//
//  SSideMenuView.swift
//  SSideMenu
//
//  Created by Sunil Verma on 24/05/24.
//

import SwiftUI

enum SSideMenuRowType: Int, CaseIterable{
    case home = 0
    case profile
    case termsAndServices
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .termsAndServices:
            return "Terms and Services"
        case .profile:
            return "Profile"
        }
    }
    var iconName: String{
        switch self {
        case .home:
            return "home"
        case .termsAndServices:
            return "termsAndServices"
        case .profile:
            return "profile"
        }
    }
}

struct SSideMenuView: View {
    @Binding var selectedSideMenuTab: Int
    @Binding var presentSideMenu: Bool
    var body: some View {
        HStack {
            ZStack{
                Rectangle()
                    .fill(.white)
                    .frame(width: 270)
                    .shadow(color: .purple.opacity(0.1), radius: 5, x: 0, y: 3)
                
                VStack(alignment: .leading, spacing: 0) {
                    ProfileImageView()
                        .frame(height: 120)
                        .padding(.bottom, 10)
                    let allCases:[SSideMenuRowType] =  SSideMenuRowType.allCases
                    ScrollView {
                        VStack(spacing: 0) {
                            ForEach(allCases, id: \.self){ row in
                                RowView(isSelected: selectedSideMenuTab == row.rawValue, imageName: row.iconName, title: row.title) {
                                    selectedSideMenuTab = row.rawValue
                                    presentSideMenu.toggle()
                                }
                            }
                        }
                    }.background(.white)
                }
                .padding(.top, 50)
                .frame(width: 270)
                .background(
                    Color("appNavBarColor")
                )
            }
            Spacer()
        }
        .background(.clear)
    }
    
    func ProfileImageView() -> some View{
        VStack(alignment: .center, spacing: 0){
            HStack{
                Spacer()
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.white, lineWidth: 2)
                    .frame(width:80, height: 80)
                    .overlay(
                        Text("SV")
                            .foregroundColor(.white)
                    )
                    .onTapGesture {
                        selectedSideMenuTab = SSideMenuRowType.profile.rawValue
                        presentSideMenu.toggle()
                    }
                Spacer()
            }
        }.background(Color("appNavBarColor"))
    }
    
    func RowView(isSelected: Bool, imageName: String, title: String, hideDivider: Bool = false, action: @escaping (()->())) -> some View{
        Button{
            action()
        } label: {
            VStack(alignment: .leading){
                HStack(spacing: 20){
                    ZStack{
                        Image(imageName)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isSelected ? .black : .gray)
                            .frame(width: 26, height: 26)
                    }
                    .frame(width: 30, height: 30)
                    Text(title)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(isSelected ? .black : .gray)
                    Spacer()
                }.padding(.leading, 10)
            }
        }
        .frame(height: 50)
        .background(
            LinearGradient(colors: [isSelected ? .purple.opacity(0.5) : .white, .white], startPoint: .leading, endPoint: .trailing)
        )
    }
}

