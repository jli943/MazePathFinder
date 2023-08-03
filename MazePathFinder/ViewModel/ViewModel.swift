//
//  ViewModel.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

class ViewModel: ObservableObject{
    //row-29
    //col-23
    private static let rowNumber = 29
    private static let colNumber = 25
    @Published var grid = Grid(row: rowNumber, col: colNumber)
    @Published var algorithm: Algorithm?
    @Published var maze: Maze?
    
    let algoritrhmsMenu:[Algorithm] = [.bfs, .dij, .dfs]
    let mazeMenu:[Maze] = [.unweightMaze, .weightMaze]
    
    func ResetGraph(){
        grid.resetGrid()
        algorithm = nil
        maze = nil
    }
    
    func chooseMaze(){
        grid.resetMaze()
        
        grid.mazeGenerator()
        switch maze{
        case .unweightMaze:
            grid.backtracking()
        case .weightMaze:
            grid.weightedMaze()
        case .none: break
        }
    }
    
    func chooseSearchAlgo(){
        grid.resetSearch()
    }
    
    func startSearch(){
        switch algorithm {
        case .bfs:
            grid.bfsSearch()
        case .dij:
            grid.dijkstraSearch()
        case .dfs:
            grid.dfsSearch()
        case .none:
            break
        }
    }
    
    func findShortestWay(){
        switch algorithm {
        case .bfs:
            grid.shortestPathBfs()
        case .dfs:
            grid.shortestPathBfs()
        case .dij:
            grid.shortestPathWeight()
        case .none:
            break
        }
    }
    
}
