//
//  MazeViewModel.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/30.
//

import SwiftUI

extension ViewModel{
    //startC startR Present index
    //col and row Present number
    //not set boundary as barrier
    func recursiveDivisionMaze(startC: Int, startR: Int, col: Int, row: Int){
        if col<=2 || row<=2{
            return
        }
        let isVerticalSplit = col > row
        let wallC = startC + (isVerticalSplit ? Int.random(in: 1..<col-1) : 0)
        let wallR = startR + (isVerticalSplit ? 0 : Int.random(in: 1..<row-1))

        let passageR = wallR + (isVerticalSplit ? Int.random(in: 0..<row) : 0)
        let passageC = wallC + (isVerticalSplit ? 0 : Int.random(in: 0..<col))

//        print("startC:\(startC)")
//        print("startR:\(startR)")
//        print("row:\(row)")
//        print("col:\(col)")
//        print("wallC:\(wallC)")
//        print("wallR:\(wallR)")
//        print("passageC:\(passageC)")
//        print("passageR:\(passageR)")

        if isVerticalSplit{
            for i in 0..<row{
                if wallR+i != passageR{
                    self.grid.cells[wallR+i][wallC].isBarrier = true
                }
            }
        }else {
            for i in 0..<col{
                if wallC+i != passageC{
                    self.grid.cells[wallR][wallC+i].isBarrier = true
                }
            }
        }
//        for row in self.grid{
//            print(row)
//        }
//        print("---------------")

        let nextStartC = startC
        let nextStartR = startR
        let nextCol = isVerticalSplit ? wallC - startC : col
        let nextRow = isVerticalSplit ? row : wallR - startR
        recursiveDivisionMaze(startC: nextStartC, startR: nextStartR, col: nextCol, row: nextRow)

        let secondStartC = startC + (isVerticalSplit ? wallC + 1 : 0)
        let secondStartR = startR + (isVerticalSplit ? 0 : wallR + 1)
        let secondCol = isVerticalSplit ? col - wallC - 1 : col
        let secondRow = isVerticalSplit ? row : row - wallR - 1
        recursiveDivisionMaze(startC: secondStartC, startR: secondStartR, col: secondCol, row: secondRow)
        return

    }
    


}


