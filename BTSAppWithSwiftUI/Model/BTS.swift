//
//  BTS.swift
//  BTSAppWithSwiftUI
//
//  Created by 김연지 on 5/13/24.
//

import Foundation
import SwiftUI // Image

struct BTS: Codable, Hashable {
    
    var nick: String
    var name: String
    var desc: String
    
    // 이거 이렇게 쓰는거 확인 한 번 더 하자
    private var image: String
    var profile: Image {
        Image(image)
    }
}
