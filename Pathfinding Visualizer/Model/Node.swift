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
//    var visited: Bool = false
    var distance: Int?
    var onPath = false
}

struct Coordinate: Hashable {
    var row: Int
    var col: Int
    
    func isValidCoord(in grid: Grid) -> Bool {
        return row >= 0 && row < grid.row && col >= 0 && col < grid.col
    }
    
    func neighborCoords(in grid: Grid) -> [Coordinate] {
        var neighbors: [Coordinate] = []
        let candidateCoords = [
            Coordinate(row: row - 1, col: col),
            Coordinate(row: row + 1, col: col),
            Coordinate(row: row, col: col - 1),
            Coordinate(row: row, col: col + 1)
        ]
        
        for coord in candidateCoords {
            if coord.isValidCoord(in: grid) {
                neighbors.append(coord)
            }
        }
        return neighbors
    }
}




