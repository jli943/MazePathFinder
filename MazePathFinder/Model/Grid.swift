//
//  Grid.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

struct Grid {
    var rowNumber: Int
    var colNumber: Int
    var startCoord: Coordinate
    var targetCoord: Coordinate
    var cells: [[Node]]
    var barrierCoords:Set<Coordinate> = []
    var weightCoords:Set<Coordinate> = []
    
    init(row: Int, col: Int) {
        rowNumber = row
        colNumber = col
        self.cells = Array(repeating: Array(repeating: Node(coord: Coordinate(row: 0, col: 0)), count: colNumber), count: rowNumber)
        for x in 0..<rowNumber {
            for y in 0..<colNumber {
                cells[x][y] = Node(coord: Coordinate(row: x, col: y))
            }
        }
        startCoord = Coordinate(row: (rowNumber-1)/2+2, col: (colNumber-1)/2)
        targetCoord = Coordinate(row: rowNumber-3, col: (colNumber-1)/2)
    }
    
    func isValidCoordinate(coord:Coordinate) -> Bool {
        return coord.row >= 0 && coord.row < rowNumber && coord.col >= 0 && coord.col < colNumber
    }
    
    
    func neighborCoords(coord: Coordinate) -> [Coordinate] {
        var neighbors: [Coordinate] = []
        let row = coord.row
        let col = coord.col
        let candidateCoords = [
            Coordinate(row: row, col: col + 1),
            Coordinate(row: row + 1, col: col),
            Coordinate(row: row, col: col - 1),
            Coordinate(row: row - 1, col: col)
        ]
        
        for coord in candidateCoords {
            if isValidCoordinate(coord: coord) {
                neighbors.append(coord)
            }
        }
        return neighbors
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
                cells[x][y].weight = 1
            }
        }
        barrierCoords = []
        weightCoords = []
    }
    
    mutating func resetSearch(){
        for x in 0..<rowNumber {
            for y in 0..<colNumber {
                cells[x][y].distance = nil
                cells[x][y].onPath = false
            }
        }
    }
    
    mutating func resetMaze(){
        for x in 0..<rowNumber {
            for y in 0..<colNumber {
                cells[x][y].isBarrier = false
                cells[x][y].weight = 1
            }
        }
        
        barrierCoords = []
        weightCoords = []
    }
}
