//
//  Grid.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

struct Grid: Identifiable {
    var id = UUID()
    var width: Int
    var height: Int
    var cells: [[Node]]

    init(width: Int, height: Int) {
            self.width = width
            self.height = height
            self.cells = Array(repeating: Array(repeating: Node(coord: Coordinate(x: 0, y: 0)), count: height), count: width)
            for x in 0..<width {
                for y in 0..<height {
                    cells[x][y] = Node(coord: Coordinate(x: x, y: y))
                }
            }
        }
}
