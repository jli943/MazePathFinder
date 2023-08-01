//
//  MazeGenerator.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/8/1.
//

import SwiftUI

extension ViewModel{
    func MazeGenerator(rowNumber: Int, colNumber: Int){
        for i in 0..<rowNumber {
            for j in 0..<colNumber {
                if i%2 == 1{
                    self.grid.cells[i][j].isBarrier = true
                } else{
                    if j%2 == 1 {
                        self.grid.cells[i][j].isBarrier = true
                    }
                }
            }
            
        }
    }
}
