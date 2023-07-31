////
////  BFS.swift
////  Pathfinding Visualizer
////
////  Created by Junwei Li on 2023/7/28.
////
//
import Foundation

extension ViewModel{
    
    func bfs(startCoord: Coordinate, targetCoord: Coordinate) {
        var queue = [(coord: startCoord, distance: 0)]
        var needVisited: Set<Coordinate> = [startCoord]
        
        while !queue.isEmpty {
            let (currentCoord, currentDistance) = queue.removeFirst()
            
            self.grid.cells[currentCoord.row][currentCoord.col].distance = currentDistance
            //            self.grid.cells[currentCoord.row][currentCoord.col].visited = true
            
            if currentCoord == targetCoord {
                return
            }
            
            for neighborCoord in currentCoord.neighborCoords(in: grid) {
                if !needVisited.contains(neighborCoord), !barrierSet.contains(neighborCoord){
                    needVisited.insert(neighborCoord)
                    queue.append((coord: neighborCoord, distance: currentDistance + 1))
                }
            }
        }
    }
    
    func shortestPathBfs(startCoord: Coordinate, targetCoord: Coordinate) {
        var currentCoord = targetCoord
        while currentCoord != startCoord {
            let currentDistance = grid.cells[currentCoord.row][currentCoord.col].distance
            grid.cells[currentCoord.row][currentCoord.col].onPath = true
            
            for neighborCoord in currentCoord.neighborCoords(in: grid) {
                if grid.cells[neighborCoord.row][neighborCoord.col].distance == currentDistance! - 1 {
                    currentCoord = neighborCoord
                }
            }
        }
        grid.cells[currentCoord.row][currentCoord.col].onPath = true
    }
}

