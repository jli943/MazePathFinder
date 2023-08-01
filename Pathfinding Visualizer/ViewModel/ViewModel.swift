//
//  ViewModel.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

class ViewModel: ObservableObject {
    private static let rowNumber = 29
    private static let colNumber = 21
    @Published var grid: Grid = Grid(row: rowNumber, col:colNumber)
    @Published var startPoint = Coordinate(row: 0, col: 0)
    @Published var targetPoint = Coordinate(row: rowNumber-1, col: colNumber-1)
    @Published var algorithm: Algorithm?
    @Published var maze: Maze?
    
    
    let mazes:[Maze] = [.dFSMaze]
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
        barrierSet = []
        algorithm = nil
        maze = nil
    }
    
    func chooseMaze(){
        switch maze{
        case .dFSMaze:
            self.MazeGenerator(rowNumber: ViewModel.rowNumber, colNumber: ViewModel.colNumber)
            self.Backtracking(curCoord: Coordinate(row: 0, col: 0))
        case .none: break
        }
    }
    
    func startSearch(){
        switch algorithm {
        case .bfs:
                self.bfs(startCoord: self.startPoint, targetCoord: self.targetPoint)
        case .dfs: break
            
        case .none:
            break
        }
    }
    func findShortestWay(){
        switch algorithm {
        case .bfs:
                self.shortestPathBfs(startCoord: self.startPoint, targetCoord: self.targetPoint)
        case .dfs:
            break
        case .none:
            break
        }
    }

}

