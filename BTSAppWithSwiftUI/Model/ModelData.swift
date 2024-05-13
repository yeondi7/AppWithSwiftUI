//
//  Model.swift
//  BTSAppWithSwiftUI
//
//  Created by 김연지 on 5/13/24.
//

import Foundation

var bts: [BTS] = load("BTS.json")
// [BTS] = T가 된다는거지

var exo = ["시우민", "디오","첸","백현","세훈","루한","레이","찬열","수호","크리스", "타오"]

// 디코딩 할려고 하는 파일이기 때문에, codable로 바꿔도 무관
// _ 외부 매개변수를 생략하기로 했음
func load<T:Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let url = Bundle.main.url(forResource: filename, withExtension: nil)
            // url은 옵셔널
    else { fatalError("Couldn't find \(filename) in main bundle.")} // 번들에 없는 케이스

    // try도 do catch랑 try?가 있지
    // try?하고 싶으면 Data? 꼭 해주시길
    do {
        data = try Data(contentsOf: url)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)") // 걍 못읽어오는 케이스
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")    // 파싱을 할 수가 없어요 모델을 확인하세요
    }
}


