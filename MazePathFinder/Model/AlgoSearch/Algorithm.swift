//
//  Algorithm.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

enum Algorithm: Identifiable {
    
    var id: Algorithm { self }
    case bfs,dij
    
    var name: String {
            switch self {
            case .bfs:
                return "BfsSearch"
            case .dij:
                return "DijkstraSearch"
            }
        }
}
