//
//  ViewModel.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var grid: Grid = Grid(row: 30, col:25)
    @Published var startPoint = Coordinate(row: 9, col: 11)
    @Published var targetPoint = Coordinate(row: 21, col: 2)
    @Published var algorithm: Algorithm = .bfs
    @Published var maze: Maze = .oneBarrier
    
    
    let mazes:[Maze] = [.oneBarrier]
    let algorithms: [Algorithm] = [.bfs, .dfs]
    var barrierSet: Set<Coordinate> = []
    
    func resetGrid() {
        for x in 0..<grid.row {
            for y in 0..<grid.col {
                grid.cells[x][y].distance = nil
//                grid.cells[x][y].visited = false
                grid.cells[x][y].onPath = false
                grid.cells[x][y].isBarrier = false
            }
        }
    }
    
    func chooseMaze(){
        switch maze{
        case .oneBarrier:
            self.setOneBarrier()
        }
    }
    
    func startSearch(){
        switch algorithm {
        case .bfs:

                self.bfs(startCoord: self.startPoint, targetCoord: self.targetPoint)
        case .dfs: break
            
        }
    }
    func findShortestWay(){
        switch algorithm {
        case .bfs:
                self.shortestPathBfs(startCoord: self.startPoint, targetCoord: self.targetPoint)
        case .dfs:
            break
        }
    }

}

