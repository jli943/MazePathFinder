//
//  Algorithm.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

enum Algorithm {
    case bfs
    
    var name: String {
            switch self {
            case .bfs:
                return "BFS"
            }
        }
}
