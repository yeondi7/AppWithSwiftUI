//
//  BTSRow.swift
//  BTSAppWithSwiftUI
//
//  Created by 김연지 on 5/13/24.
//

import SwiftUI

var btsS:[BTS] = load("BTS.json")

struct BTSRow: View {
    var member: BTS
    var body: some View {
        HStack {
            member.profile
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
        }
            Text(member.nick)
                .font(.title)
            Spacer()
            VStack{
                Text(member.name)
            }.padding()
            Text(member.desc)
        }
    }


#Preview {
    BTSRow(member: bts[0])
}
