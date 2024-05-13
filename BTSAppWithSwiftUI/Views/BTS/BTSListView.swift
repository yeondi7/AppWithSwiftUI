//
//  BTSList.swift
//  BTSAppWithSwiftUI
//
//  Created by 김연지 on 5/13/24.
//

import SwiftUI

struct BTSListView: View {
    
    @State var isExpanded = true
    @State var isExpandedEXO = true
    // identifable 없으면 id가 적혀있는걸로 하셈
    var body: some View {
        NavigationSplitView {
            List {// \.nick을 같은걸도 가능..., self도 가능
                Section(isExpanded: $isExpanded) {
                    ForEach(bts, id: \.nick) { member in
                        NavigationLink {
                            BTSDetailView (member : member)
                        } label: {
                            BTSRow(member : member)
                        }
                        }.onDelete(perform: {
                            indexSet in bts.remove(atOffsets: indexSet)
                        }).onMove(perform: { indices, newOffset in
                            bts.move(fromOffsets: indices, toOffset: newOffset)
                        })
                            
                } header: {
                        Image("bts-logo").resizable()
                        .aspectRatio(contentMode: .fit)
                        // bts in 해도 되는데 차라리 member를 쓰는게 덜 헤깔림
                }
                Section(isExpanded: $isExpandedEXO) {
                    ForEach(exo, id: \.self){
                        name in
                        NavigationLink {
                            Text(name)
                        } label: {
                            Text(name)
                        }
                    }.onDelete(perform: {
                            indexSet in exo.remove(atOffsets: indexSet)
                        }).onMove(perform: { indices, newOffset in
                            exo.move(fromOffsets: indices, toOffset: newOffset)
                        })
                    } header: {
                        Text("Exo").font(.title)
                    }
                }.toolbar(content: {
                    EditButton()
                })
                    .navigationTitle("남자아이돌들")
                    
            } detail: {
                Text("")// 아이폰에선 크게 표시가 나는 부분이 아니라고
        }
    }
}
                                    
            
#Preview {
    BTSListView()
}
