//
//  BackTracking.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/31.
//

import SwiftUI

extension ViewModel{
    func Backtracking(curCoord: Coordinate) {
        var visitedCoord = Set<Coordinate>() // Initialize an empty mutable set
        helperBacktracking(curCoord: curCoord, visitedCoord: &visitedCoord)
        for row in 0..<grid.row{
            for col in 0..<grid.col{
                if grid.cells[row][col].isBarrier == true{
                    barrierSet.insert(Coordinate(row: row, col: col))
                }
            }
        }
        
        
    }

    private func helperBacktracking(curCoord: Coordinate, visitedCoord: inout Set<Coordinate>) {
        for neighbor in curCoord.neighborCoordsInMaze(in: grid) {
            if !visitedCoord.contains(neighbor) {
                grid.cells[(neighbor.row + curCoord.row)/2][(neighbor.col + curCoord.col)/2].isBarrier = false
                visitedCoord.insert(neighbor)
                helperBacktracking(curCoord: neighbor, visitedCoord: &visitedCoord)
            }
        }
    }

}
