//
//  MazeGenerator.swift
//  MazePathFinder
//
//  Created by Junwei Li on 2023/8/2.
//

import Foundation

extension Grid{
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
}
