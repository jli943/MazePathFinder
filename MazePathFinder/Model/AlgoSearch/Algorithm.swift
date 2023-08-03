//
//  Algorithm.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

enum Algorithm: Identifiable {
    
    var id: Algorithm { self }
    case bfs,dij,dfs,astar
    
    var name: String {
            switch self {
            case .bfs:
                return "BFS"
            case .dfs:
                return "DFS"
            case .dij:
                return "Dijkstra"
            case .astar:
                return "A-Star"
            }
        
        }
}
