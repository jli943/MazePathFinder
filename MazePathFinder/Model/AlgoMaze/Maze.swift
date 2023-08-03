//
//  Maze.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/30.
//

import Foundation

enum Maze: Identifiable {
    
    var id: Maze { self }
    case dFSMaze, weightMaze
    
    var name: String {
            switch self {
            case .dFSMaze:
                return "DfsMaze"
            case .weightMaze:
                return "WeightMaze"
            }
        }
}
