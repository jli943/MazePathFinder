//
//  AStar.swift
//  MazePathFinder
//
//  Created by Junwei Li on 2023/8/3.
//

import Foundation

extension Grid{
    
    private func heuristic(coord: Coordinate) -> Int {
        let rowDistance = coord.row - targetCoord.row
        let colDistance = coord.col - targetCoord.col
        return Int(sqrt(Double(rowDistance * rowDistance + colDistance * colDistance)).rounded())
    }
    
    //A* f(aStarF) = g(distance) + h(heuristic)
    mutating func aStar(){
        // order by f
        let minHeap = MinHeap<Node>()
        let g = 1
        let h = heuristic(coord: startCoord)
        cells[startCoord.row][startCoord.col].distance = g
        cells[startCoord.row][startCoord.col].heuristic = h
        cells[startCoord.row][startCoord.col].aStarF = g+h
        
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
                        let neighborG = curNode.distance! + cells[neighborCoord.row][neighborCoord.col].weight
                        let neighborH = heuristic(coord: neighborCoord)
                        let neighborF = neighborG + neighborH
                        if !minHeap.contains(cells[neighborCoord.row][neighborCoord.col]){
                            cells[neighborCoord.row][neighborCoord.col].distance = neighborG
                            cells[neighborCoord.row][neighborCoord.col].heuristic = neighborH
                            cells[neighborCoord.row][neighborCoord.col].aStarF = neighborF
                            minHeap.insert(cells[neighborCoord.row][neighborCoord.col])
                        } else{
                            if neighborG < cells[neighborCoord.row][neighborCoord.col].aStarF! {
                                cells[neighborCoord.row][neighborCoord.col].distance = neighborG
                                cells[neighborCoord.row][neighborCoord.col].heuristic = neighborH
                                cells[neighborCoord.row][neighborCoord.col].aStarF = neighborF
                            }
                        }
                    }
                    
                }
            }
            
        }
    }
}
