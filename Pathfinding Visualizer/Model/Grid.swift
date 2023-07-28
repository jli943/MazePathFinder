//
//  Grid.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

struct Grid: Identifiable {
    var id: Int = 0
    var width: Int
    var height: Int
    var cells: [Node] = []

    init(width: Int, height: Int) {
        self.width = width
        self.height = height
        self.cells = [Node]()
        for x in 0..<width {
            for y in 0..<height {
                let cell = Node(id:Point(x: x, y: y))
                cells.append(cell)
            }
        }
    }
    
//    mutating func resetGrid(){
//        for index in cells.indices{
//            cells[index].visited.toggle()
//        }
//    }
}
