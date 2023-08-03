//
//  Bfs.swift
//  MazePathFinder
//
//  Created by Junwei Li on 2023/8/2.
//

import Foundation

extension Grid{
    mutating func bfsSearch(){
        var queue = [(coord: startCoord, distance: 0)]
        var visited: Set<Coordinate> = [startCoord]
        
        while !queue.isEmpty {
            let (currentCoord, currentDistance) = queue.removeFirst()
            
            cells[currentCoord.row][currentCoord.col].distance = currentDistance
            //            self.grid.cells[currentCoord.row][currentCoord.col].visited = true
            
            if currentCoord == targetCoord {
                return
            }
            
            for neighborCoord in neighborCoords(coord: currentCoord){
                if !visited.contains(neighborCoord), !barrierCoords.contains(neighborCoord){
                    visited.insert(neighborCoord)
                    queue.append((coord: neighborCoord, distance: currentDistance + 1))
                }
            }
        }
    }
}
