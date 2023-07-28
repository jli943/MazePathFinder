//
//  Node.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

struct Node: Identifiable {
    var id = UUID()
    var coord: Coordinate
    var visited: Bool = false
    var distance: Int?
    var onPath = false
}

struct Coordinate: Hashable {
    var x: Int
    var y: Int
    
    func isValidCoord(in grid: Grid) -> Bool {
        return x >= 0 && x < grid.width && y >= 0 && y < grid.height
    }
    
    func neighborCoords(in grid: Grid) -> [Coordinate] {
        var neighbors: [Coordinate] = []
        let candidateCoords = [
            Coordinate(x: x - 1, y: y),
            Coordinate(x: x + 1, y: y),
            Coordinate(x: x, y: y - 1),
            Coordinate(x: x, y: y + 1)
        ]
        
        for coord in candidateCoords {
            if coord.isValidCoord(in: grid) {
                neighbors.append(coord)
            }
        }
        return neighbors
    }
}




