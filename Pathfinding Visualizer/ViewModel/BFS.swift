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
        while !queue.isEmpty {
            let (currentCoord, currentDistance) = queue.removeFirst()
            grid.cells[currentCoord.x][currentCoord.y].visited = true
            grid.cells[currentCoord.x][currentCoord.y].distance = currentDistance

            if currentCoord == targetCoord {
                return
            }

            for neighborCoord in currentCoord.neighborCoords(in: grid) {
                if !grid.cells[neighborCoord.x][neighborCoord.y].visited {
                    queue.append((coord: neighborCoord, distance: currentDistance + 1))
                }
            }
        }
    }

    func shortestPathBfs(startCoord: Coordinate, targetCoord: Coordinate) {
        var currentCoord = targetCoord
        while currentCoord != startCoord {
            let currentDistance = grid.cells[currentCoord.x][currentCoord.y].distance
            grid.cells[currentCoord.x][currentCoord.y].onPath = true

            for neighborCoord in currentCoord.neighborCoords(in: grid) {
                if grid.cells[neighborCoord.x][neighborCoord.y].distance == currentDistance! - 1 {
                    currentCoord = neighborCoord
                }
            }
        }
        grid.cells[currentCoord.x][currentCoord.y].onPath = true
    }
}

