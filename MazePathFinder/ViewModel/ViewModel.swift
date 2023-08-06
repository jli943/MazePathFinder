//
//  ViewModel.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

class ViewModel: ObservableObject{
    //row-29
    //col-25
    private static let rowNumber = 29
    private static let colNumber = 25
    @Published var grid = Grid(row: rowNumber, col: colNumber)
    @Published var algorithm: Algorithm?
    @Published var maze: Maze?
    
    let algoritrhmsMenu:[Algorithm] = [.dij, .astar,.greedy, .bfs, .dfs]
    let mazeMenu:[Maze] = [.weightMaze, .unweightMaze]
    
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
        case .astar:
            grid.aStar()
        case .greedy:
            grid.greedyBestFirstSearch()

        case .none:
            break
        }
        grid.searchNodeCount()
    }
    
    func findShortestWay(){
        switch algorithm {
        case .bfs:
            grid.shortestPathUnweight()
        case .dfs:
            grid.shortestPathUnweight()
        case .dij:
            grid.shortestPathWeight()
        case .astar:
            grid.shortestPathWeight()
        case.greedy:
            grid.shortestPathWeight()
        case .none:
            break
        }
        grid.shortPathCount()
    }
    
    func updateSearchNodeCount(){
        grid.searchNodeCount()
    }
    
    func updateShortPathCount(){
        grid.shortPathCount()
    }
    
}
