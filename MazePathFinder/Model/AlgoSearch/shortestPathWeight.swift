//
//  shortestPathWeight.swift
//  MazePathFinder
//
//  Created by Junwei Li on 2023/8/3.
//

import Foundation

extension Grid{
    mutating func shortestPathWeight() {
        var currentCoord = targetCoord
        while currentCoord != startCoord {
            let currentDistance = cells[currentCoord.row][currentCoord.col].distance
            cells[currentCoord.row][currentCoord.col].onPath = true
            
            for neighborCoord in neighborCoords(coord: currentCoord) {
                if cells[neighborCoord.row][neighborCoord.col].distance == currentDistance! - cells[currentCoord.row][currentCoord.col].weight {
                    currentCoord = neighborCoord
                }
            }
        }
        cells[currentCoord.row][currentCoord.col].onPath = true
    }
}
