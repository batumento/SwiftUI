//
//  ModelData.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 28.07.2024.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [LandMark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Can't found \(filename) in main bundle")
    }

    do {
        data = try Data(contentsOf: file)
    }
    catch {
        fatalError("Couldn't load \(file)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch {
        fatalError("Couldn't parse \(filename)")
    }
}
