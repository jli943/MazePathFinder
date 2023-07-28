//
//  Node.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

struct Node: Identifiable {
    var id : Point
    var visited: Bool = false
}

struct Point: Hashable {
    let x: Int
    let y: Int
}
