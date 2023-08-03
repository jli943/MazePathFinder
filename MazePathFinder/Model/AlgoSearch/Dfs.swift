//
//  Dfs.swift
//  MazePathFinder
//
//  Created by Junwei Li on 2023/8/3.
//

import Foundation

extension Grid{
    mutating func dfsSearch() {
        var visitedCoords: Set<Coordinate> = []
        cells[startCoord.row][startCoord.col].distance = 1
        recursion(preDistance: 1, curCoord: startCoord, visitedCoords: &visitedCoords)
    }

    private mutating func recursion(preDistance: Int, curCoord: Coordinate, visitedCoords: inout Set<Coordinate>) -> Bool {
        if curCoord == targetCoord {
            return true
        }

        for neighborCoord in neighborCoords(coord: curCoord) {
            if !visitedCoords.contains(neighborCoord), !barrierCoords.contains(neighborCoord) {
                visitedCoords.insert(neighborCoord)
                cells[neighborCoord.row][neighborCoord.col].distance = preDistance + 1
                if recursion(preDistance: preDistance + 1, curCoord: neighborCoord, visitedCoords: &visitedCoords) {
                    return true
                }
            }
        }

        return false // Target not found in this branch
    }

}
