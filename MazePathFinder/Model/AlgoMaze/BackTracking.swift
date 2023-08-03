//
//  BackTracking.swift
//  MazePathFinder
//
//  Created by Junwei Li on 2023/8/2.
//

import Foundation

extension Grid{
    mutating func backtracking() {
        var visitedCoord = Set<Coordinate>() // Initialize an empty mutable set
        helperBacktracking(curCoord: startCoord, visitedCoord: &visitedCoord)
        for row in 0..<rowNumber{
            for col in 0..<colNumber{
                if cells[row][col].isBarrier == true{
                    barrierCoords.insert(Coordinate(row: row, col: col))
                }
            }
        }
    }
    
    private mutating func helperBacktracking(curCoord: Coordinate, visitedCoord: inout Set<Coordinate>) {
        for neighbor in neighborCoordsInMaze(coord: curCoord) {
            if !visitedCoord.contains(neighbor) {
                cells[(neighbor.row + curCoord.row)/2][(neighbor.col + curCoord.col)/2].isBarrier = false
                visitedCoord.insert(neighbor)
                helperBacktracking(curCoord: neighbor, visitedCoord: &visitedCoord)
            }
        }
    }
    
}
