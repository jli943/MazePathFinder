//
//  ViewModel.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var grid: Grid = Grid(width: 10, height: 10)
    @Published var startPoint = Point(x: 2, y: 2)
    @Published var targetPoint = Point(x: 3, y: 3)
    @Published var algorithm: Algorithm = .bfs
    
    let algorithms: [Algorithm] = [.bfs]
    
    func resetGrid(){
        for index in grid.cells.indices{
            grid.cells[index].visited = false
        }
    }
    
    func startSearch(){
        resetGrid()
        switch algorithm {
        case .bfs:
            bfs(start: startPoint, target: targetPoint)
        }

    }
    
    private func bfs( start: Point, target: Point) {
        var queue = [start]
        while !queue.isEmpty {
            let currentPoint = queue.removeFirst()
            
            self.grid.cells[pointToCellIndex(pointX: currentPoint.x, pointY: currentPoint.y)].visited = true

            if currentPoint == target{
                return
            }

            let neighborPoints = [Point(x: currentPoint.x - 1, y: currentPoint.y), Point(x: currentPoint.x + 1, y: currentPoint.y),Point(x: currentPoint.x, y: currentPoint.y - 1),Point(x: currentPoint.x, y: currentPoint.y + 1),]


            for neighborPoint in neighborPoints {
                if neighborPoint.x >= 0, neighborPoint.x < self.grid.width, neighborPoint.y >= 0, neighborPoint.y < self.grid.height, self.grid.cells[pointToCellIndex(pointX: neighborPoint.x, pointY: neighborPoint.y)].visited == false {
                    queue.append(neighborPoint)
                }
            }
        }
    }
    
    private func pointToCellIndex(pointX:Int, pointY:Int)->Int{
        pointX * grid.width + pointY
    }
}
//
//    func startPathfinding() {
//        // Clear the grid
//        grid.cells.forEach { $0.visited = false }
//
//        // Find the path using the selected algorithm
//        switch algorithm {
//        case .dfs:
//            _ = dfs(grid: grid, start: startNode, target: targetNode)
//        case .bfs:
//            _ = bfs(grid: grid, start: startNode, target: targetNode)
//        }
//    }
//

