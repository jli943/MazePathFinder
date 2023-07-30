//
//  Grid.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

struct Grid: Identifiable {
    var id = UUID()
    var row: Int
    var col: Int
    var cells: [[Node]]
    
    init(row: Int, col: Int) {
        self.row = row
        self.col = col
        self.cells = Array(repeating: Array(repeating: Node(coord: Coordinate(row: 0, col: 0)), count: col), count: row)
        for x in 0..<row {
            for y in 0..<col {
                cells[x][y] = Node(coord: Coordinate(row: x, col: y))
            }
        }
    }
}
