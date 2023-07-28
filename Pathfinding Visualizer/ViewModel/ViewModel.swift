//
//  ViewModel.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var grid: Grid = Grid(width: 10, height: 10)
    @Published var startPoint = Coordinate(x: 5, y: 5)
    @Published var targetPoint = Coordinate(x: 9, y: 9)
    @Published var algorithm: Algorithm = .bfs
    
    let algorithms: [Algorithm] = [.bfs]
    
    func resetGrid() {
        for x in 0..<grid.width {
            for y in 0..<grid.height {
                grid.cells[x][y].visited = false
                grid.cells[x][y].distance = nil
                grid.cells[x][y].onPath = false
            }
        }
    }
    
    func startSearch(){
        resetGrid()
        switch algorithm {
        case .bfs:
            bfs(startCoord: startPoint, targetCoord: targetPoint)
            shortestPathBfs(startCoord: startPoint, targetCoord: targetPoint)
        }
    }
}

