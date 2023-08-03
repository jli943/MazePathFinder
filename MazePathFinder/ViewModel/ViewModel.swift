//
//  ViewModel.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

class ViewModel: ObservableObject{
    private static let rowNumber = 29
    private static let colNumber = 23
    @Published var grid = Grid(row: rowNumber, col: colNumber)
    @Published var algorithm: Algorithm?
    @Published var maze: Maze?
    
    let algoritrhmsMenu:[Algorithm] = [.bfs, .dij]
    let mazeMenu:[Maze] = [.dFSMaze]
    
    func ResetGraph(){
        grid.resetGrid()
        algorithm = nil
        maze = nil
    }
    
    func chooseMaze(){
        grid.mazeGenerator()
        
        switch maze{
        case .dFSMaze:
            grid.backtracking()
        case .none: break
        }
    }
    
    func startSearch(){
        switch algorithm {
        case .bfs:
            grid.bfsSearch()
        case .dij:
            grid.dijkstraSearch()
        case .none:
            break
        }
    }
    
    func findShortestWay(){
        switch algorithm {
        case .bfs:
            grid.shortestPathBfs()
        case .dij:
            grid.shortestPathBfs()
        case .none:
            break
        }
    }
    
}
