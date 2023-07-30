//
//  ViewModel.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var grid: Grid = Grid(row: 25, col:20)
    @Published var startPoint = Coordinate(row: 0, col: 0)
    @Published var targetPoint = Coordinate(row: 23, col: 19)
    @Published var algorithm: Algorithm = .bfs
    
    let algorithms: [Algorithm] = [.bfs]
    
    func resetGrid() {
        for x in 0..<grid.row {
            for y in 0..<grid.col {
                grid.cells[x][y].distance = nil
//                grid.cells[x][y].visited = false
                grid.cells[x][y].onPath = false
            }
        }
    }
    
    func startSearch(){
        resetGrid()
        switch algorithm {
        case .bfs:

                self.bfs(startCoord: self.startPoint, targetCoord: self.targetPoint)
        }
    }
    func findShortestWay(){
        switch algorithm {
        case .bfs:
                self.shortestPathBfs(startCoord: self.startPoint, targetCoord: self.targetPoint)
        }
    }

}

