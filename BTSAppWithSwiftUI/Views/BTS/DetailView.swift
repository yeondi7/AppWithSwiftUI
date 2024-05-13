//
//  BTSDetailView.swift
//  BTSAppWithSwiftUI
//
//  Created by 김연지 on 5/13/24.
//

import SwiftUI

struct BTSDetailView: View {
    var member: BTS
    
    var body: some View {
        VStack {
            member.profile.resizable()
                .frame(width: 200, height: 300)
        }
    }
}


#Preview {
    BTSDetailView(member: bts[0])
}
