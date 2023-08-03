//
//  Dijkstra.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/8/1.
//

import SwiftUI

extension Grid{
    //weight still compare distance
    mutating func dijkstraSearch (){
        let minHeap = MinHeap<Node>()
        cells[startCoord.row][startCoord.col].distance = 1
        minHeap.insert(cells[startCoord.row][startCoord.col])
        var visited: Set<Coordinate> = []
        while !minHeap.isEmpty{
            if let curNode = minHeap.remove(){
                if visited.contains(curNode.coord){
                    continue
                }
                visited.insert(curNode.coord)
                if curNode.coord == targetCoord{
                    return
                }
                for neighborCoord in neighborCoords(coord: curNode.coord){
                    if !visited.contains(neighborCoord), !barrierCoords.contains(neighborCoord){
                        let newDistance = (curNode.distance ?? Int.max) + cells[neighborCoord.row][neighborCoord.col].weight
                        if newDistance < (cells[neighborCoord.row][neighborCoord.col].distance ?? Int.max) {
                            cells[neighborCoord.row][neighborCoord.col].distance = newDistance
                            minHeap.insert(cells[neighborCoord.row][neighborCoord.col])
                        }
                    }
                    
                }
            }
            
        }
        
    }
}
