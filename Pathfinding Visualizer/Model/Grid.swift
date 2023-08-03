//
//  Grid.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

struct Grid: Identifiable {
    var id = UUID()
    var rowNumber: Int
    var colNumber: Int
    var startCoord: Coordinate
    var targetCoord: Coordinate
    var cells: [[Node]]
    var barrierCoords:Set<Coordinate> = []
    
    init(row: Int, col: Int) {
        rowNumber = row
        colNumber = col
        self.cells = Array(repeating: Array(repeating: Node(coord: Coordinate(row: 0, col: 0)), count: colNumber), count: rowNumber)
        for x in 0..<rowNumber {
            for y in 0..<colNumber {
                cells[x][y] = Node(coord: Coordinate(row: x, col: y))
            }
        }
        startCoord = Coordinate(row: 0, col: 0)
        targetCoord = Coordinate(row: rowNumber-1, col: colNumber-1)
    }
    
    func isValidCoordinate(coord:Coordinate) -> Bool {
        return coord.row >= 0 && coord.row < rowNumber && coord.col >= 0 && coord.col < colNumber
    }
    
    
    func neighborCoords(coord: Coordinate) -> [Coordinate] {
        var neighbors: [Coordinate] = []
        let row = coord.row
        let col = coord.col
        let candidateCoords = [
            Coordinate(row: row - 1, col: col),
            Coordinate(row: row + 1, col: col),
            Coordinate(row: row, col: col - 1),
            Coordinate(row: row, col: col + 1)
        ]
        
        for coord in candidateCoords {
            if isValidCoordinate(coord: coord) {
                neighbors.append(coord)
            }
        }
        return neighbors.shuffled()
    }
    
    func neighborCoordsInMaze(coord: Coordinate) -> [Coordinate]{
        var neighborsInMaze: [Coordinate] = []
        let row = coord.row
        let col = coord.col
        let candidateCoords = [
            Coordinate(row: row - 2, col: col),
            Coordinate(row: row + 2, col: col),
            Coordinate(row: row, col: col - 2),
            Coordinate(row: row, col: col + 2)
        ]
        
        for coord in candidateCoords {
            if isValidCoordinate(coord: coord) {
                neighborsInMaze.append(coord)
            }
        }
        return neighborsInMaze.shuffled()
    }
    
    mutating func resetGrid(){
        for x in 0..<rowNumber {
            for y in 0..<colNumber {
                cells[x][y].distance = nil
                cells[x][y].onPath = false
                cells[x][y].isBarrier = false
            }
        }
        barrierCoords = []
    }
    
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
    
    mutating func shortestPathBfs() {
        var currentCoord = targetCoord
        while currentCoord != startCoord {
            let currentDistance = cells[currentCoord.row][currentCoord.col].distance
            cells[currentCoord.row][currentCoord.col].onPath = true
            
            for neighborCoord in neighborCoords(coord: currentCoord) {
                if cells[neighborCoord.row][neighborCoord.col].distance == currentDistance! - 1 {
                    currentCoord = neighborCoord
                }
            }
        }
        cells[currentCoord.row][currentCoord.col].onPath = true
    }
    
    mutating func mazeGenerator(){
        for i in 0..<rowNumber {
            for j in 0..<colNumber {
                if i%2 == 1{
                    cells[i][j].isBarrier = true
                } else{
                    if j%2 == 1 {
                        cells[i][j].isBarrier = true
                    }
                }
            }
            
        }
    }
    
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
