//
//  Greedy.swift
//  MazePathFinder
//
//  Created by Junwei Li on 2023/8/3.
//

import Foundation

extension Grid {
    
    private func heuristic(coord: Coordinate) -> Int {
        let rowDistance = coord.row - targetCoord.row + cells[coord.row][coord.col].weight - 1
        let colDistance = coord.col - targetCoord.col + cells[coord.row][coord.col].weight - 1
        return abs(rowDistance)+abs(colDistance)
    }
    
    mutating func greedyBestFirstSearch() {
        // Order by heuristic value (h) only
        let minHeap = MinHeap<Node>()
        cells[startCoord.row][startCoord.col].heuristic = heuristic(coord: startCoord)
        cells[startCoord.row][startCoord.col].distance = 1
        
        minHeap.insert(cells[startCoord.row][startCoord.col])
        var visited: Set<Coordinate> = []
        
        while !minHeap.isEmpty {
            if let curNode = minHeap.remove() {
                if visited.contains(curNode.coord) {
                    continue
                }
                
                visited.insert(curNode.coord)
                
                if curNode.coord == targetCoord {
                    return
                }
                
                for neighborCoord in neighborCoords(coord: curNode.coord) {
                    if !visited.contains(neighborCoord), !barrierCoords.contains(neighborCoord) {
                        let curDistance = curNode.distance!
                        let neighborH = heuristic(coord: neighborCoord)
                        if !minHeap.contains(cells[neighborCoord.row][neighborCoord.col]) {
                            cells[neighborCoord.row][neighborCoord.col].heuristic = neighborH
                            cells[neighborCoord.row][neighborCoord.col].distance = curDistance + cells[neighborCoord.row][neighborCoord.col].weight
                            minHeap.insert(cells[neighborCoord.row][neighborCoord.col])
                        }
                    }
                }
            }
        }
    }
}

