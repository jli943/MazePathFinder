//
//  MazeViewModel.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/30.
//

import SwiftUI

extension ViewModel{
    func setOneBarrier(){
        barrierSet = [
            Coordinate(row: 1, col: 1), Coordinate(row: 1, col: 2), Coordinate(row: 1, col: 3),
            Coordinate(row: 1, col: 5), Coordinate(row: 1, col: 6), Coordinate(row: 1, col: 7),
            Coordinate(row: 1, col: 9), Coordinate(row: 1, col: 10), Coordinate(row: 1, col: 11),
            Coordinate(row: 1, col: 13), Coordinate(row: 1, col: 14), Coordinate(row: 1, col: 15),
            Coordinate(row: 1, col: 17), Coordinate(row: 1, col: 18), Coordinate(row: 1, col: 19),
            
            Coordinate(row: 3, col: 3),
            Coordinate(row: 3, col: 5), Coordinate(row: 3, col: 6), Coordinate(row: 3, col: 7),
            Coordinate(row: 3, col: 8), Coordinate(row: 3, col: 9), Coordinate(row: 3, col: 10),
            Coordinate(row: 3, col: 12), Coordinate(row: 3, col: 14), Coordinate(row: 3, col: 15),
            Coordinate(row: 3, col: 17),
            
            Coordinate(row: 4, col: 3), Coordinate(row: 4, col: 5), Coordinate(row: 4, col: 6),
            Coordinate(row: 4, col: 7), Coordinate(row: 4, col: 9), Coordinate(row: 4, col: 10),
            Coordinate(row: 4, col: 12), Coordinate(row: 4, col: 14), Coordinate(row: 4, col: 15),
            Coordinate(row: 4, col: 16), Coordinate(row: 4, col: 17),
            
            Coordinate(row: 5, col: 3), Coordinate(row: 5, col: 5),
            Coordinate(row: 5, col: 7), Coordinate(row: 5, col: 9), Coordinate(row: 5, col: 10),
            Coordinate(row: 5, col: 12), Coordinate(row: 5, col: 13), Coordinate(row: 5, col: 14),
            Coordinate(row: 5, col: 15), Coordinate(row: 5, col: 17),
            
            Coordinate(row: 6, col: 3), Coordinate(row: 6, col: 5),
            Coordinate(row: 6, col: 7), Coordinate(row: 6, col: 9), Coordinate(row: 6, col: 10),
            Coordinate(row: 6, col: 12), Coordinate(row: 6, col: 14), Coordinate(row: 6, col: 15),
            Coordinate(row: 6, col: 16), Coordinate(row: 6, col: 17),
            
            Coordinate(row: 7, col: 3), Coordinate(row: 7, col: 5),
            Coordinate(row: 7, col: 7), Coordinate(row: 7, col: 9), Coordinate(row: 7, col: 10),
            Coordinate(row: 7, col: 12), Coordinate(row: 7, col: 14), Coordinate(row: 7, col: 15),
            Coordinate(row: 7, col: 17),
            
            Coordinate(row: 8, col: 3), Coordinate(row: 8, col: 4), Coordinate(row: 8, col: 5),
            Coordinate(row: 8, col: 7), Coordinate(row: 8, col: 9), Coordinate(row: 8, col: 10),
            Coordinate(row: 8, col: 12), Coordinate(row: 8, col: 14), Coordinate(row: 8, col: 15),
            Coordinate(row: 8, col: 17),
            
            Coordinate(row: 9, col: 7), Coordinate(row: 9, col: 9), Coordinate(row: 9, col: 10),
            Coordinate(row: 9, col: 12), Coordinate(row: 9, col: 14), Coordinate(row: 9, col: 15),
            
            Coordinate(row: 10, col: 1), Coordinate(row: 10, col: 2), Coordinate(row: 10, col: 3),
            Coordinate(row: 10, col: 5), Coordinate(row: 10, col: 6), Coordinate(row: 10, col: 7),
            Coordinate(row: 10, col: 9), Coordinate(row: 10, col: 10), Coordinate(row: 10, col: 11),
            Coordinate(row: 10, col: 13), Coordinate(row: 10, col: 14), Coordinate(row: 10, col: 15),
            Coordinate(row: 10, col: 17), Coordinate(row: 10, col: 18), Coordinate(row: 10, col: 19),
            
            Coordinate(row: 12, col: 1), Coordinate(row: 12, col: 2), Coordinate(row: 12, col: 3),
            Coordinate(row: 12, col: 4), Coordinate(row: 12, col: 5), Coordinate(row: 12, col: 6),
            Coordinate(row: 12, col: 7), Coordinate(row: 12, col: 8), Coordinate(row: 12, col: 9),
            Coordinate(row: 12, col: 10), Coordinate(row: 12, col: 11), Coordinate(row: 12, col: 12),
            Coordinate(row: 12, col: 13), Coordinate(row: 12, col: 14), Coordinate(row: 12, col: 15),
            Coordinate(row: 12, col: 16), Coordinate(row: 12, col: 17), Coordinate(row: 12, col: 18),
            Coordinate(row: 12, col: 19), Coordinate(row: 12, col: 20), Coordinate(row: 12, col: 21),
            Coordinate(row: 12, col: 22), Coordinate(row: 12, col: 23),
            
            Coordinate(row: 13, col: 5), Coordinate(row: 13, col: 9), Coordinate(row: 13, col: 10),
            Coordinate(row: 13, col: 11), Coordinate(row: 13, col: 15), Coordinate(row: 13, col: 19),
            
            Coordinate(row: 14, col: 1), Coordinate(row: 14, col: 2), Coordinate(row: 14, col: 3),
            Coordinate(row: 14, col: 5), Coordinate(row: 14, col: 7), Coordinate(row: 14, col: 8),
            Coordinate(row: 14, col: 9), Coordinate(row: 14, col: 10), Coordinate(row: 14, col: 11),
            Coordinate(row: 14, col: 12), Coordinate(row: 14, col: 13), Coordinate(row: 14, col: 14),
            Coordinate(row: 14, col: 15), Coordinate(row: 14, col: 17), Coordinate(row: 14, col: 18),
            Coordinate(row: 14, col: 19), Coordinate(row: 14, col: 20), Coordinate(row: 14, col: 21),
            Coordinate(row: 14, col: 22), Coordinate(row: 14, col: 23),
            
            Coordinate(row: 15, col: 5), Coordinate(row: 15, col: 7), Coordinate(row: 15, col: 8),
            Coordinate(row: 15, col: 9), Coordinate(row: 15, col: 10), Coordinate(row: 15, col: 11),
            Coordinate(row: 15, col: 12), Coordinate(row: 15, col: 13), Coordinate(row: 15, col: 14),
            Coordinate(row: 15, col: 15), Coordinate(row: 15, col: 17),
            
            Coordinate(row: 16, col: 5), Coordinate(row: 16, col: 17),
            
            Coordinate(row: 17, col: 1), Coordinate(row: 17, col: 2), Coordinate(row: 17, col: 3),
            Coordinate(row: 17, col: 5), Coordinate(row: 17, col: 7), Coordinate(row: 17, col: 8),
            Coordinate(row: 17, col: 9), Coordinate(row: 17, col: 10), Coordinate(row: 17, col: 11),
            Coordinate(row: 17, col: 12), Coordinate(row: 17, col: 13), Coordinate(row: 17, col: 14),
            Coordinate(row: 17, col: 15), Coordinate(row: 17, col: 17), Coordinate(row: 17, col: 18),
            Coordinate(row: 17, col: 19), Coordinate(row: 17, col: 20), Coordinate(row: 17, col: 21),
            Coordinate(row: 17, col: 22), Coordinate(row: 17, col: 23),
            
            Coordinate(row: 18, col: 3), Coordinate(row: 18, col: 5), Coordinate(row: 18, col: 7),
            Coordinate(row: 18, col: 12), Coordinate(row: 18, col: 13), Coordinate(row: 18, col: 14),
            Coordinate(row: 18, col: 15), Coordinate(row: 18, col: 17), Coordinate(row: 18, col: 19),
            
            Coordinate(row: 19, col: 1), Coordinate(row: 19, col: 2), Coordinate(row: 19, col: 3),
            Coordinate(row: 19, col: 5), Coordinate(row: 19, col: 7), Coordinate(row: 19, col: 8),
            Coordinate(row: 19, col: 9), Coordinate(row: 19, col: 10), Coordinate(row: 19, col: 11),
            Coordinate(row: 19, col: 12), Coordinate(row: 19, col: 13), Coordinate(row: 19, col: 14),
            Coordinate(row: 19, col: 15), Coordinate(row: 19, col: 17), Coordinate(row: 19, col: 19),
            Coordinate(row: 19, col: 20), Coordinate(row: 19, col: 21), Coordinate(row: 19, col: 22),
            Coordinate(row: 19, col: 23),
            
            Coordinate(row: 20, col: 1), Coordinate(row: 20, col: 3), Coordinate(row: 20, col: 5),
            Coordinate(row: 20, col: 7), Coordinate(row: 20, col: 8), Coordinate(row: 20, col: 9),
            Coordinate(row: 20, col: 10), Coordinate(row: 20, col: 11), Coordinate(row: 20, col: 12),
            Coordinate(row: 20, col: 13), Coordinate(row: 20, col: 14), Coordinate(row: 20, col: 15),
            Coordinate(row: 20, col: 17), Coordinate(row: 20, col: 19), Coordinate(row: 20, col: 21),
            Coordinate(row: 20, col: 23),
            
            Coordinate(row: 21, col: 1), Coordinate(row: 21, col: 3), Coordinate(row: 21, col: 5),
            Coordinate(row: 21, col: 7), Coordinate(row: 21, col: 8), Coordinate(row: 21, col: 9),
            Coordinate(row: 21, col: 10), Coordinate(row: 21, col: 11), Coordinate(row: 21, col: 12),
            Coordinate(row: 21, col: 13), Coordinate(row: 21, col: 14), Coordinate(row: 21, col: 15),
            Coordinate(row: 21, col: 17), Coordinate(row: 21, col: 19), Coordinate(row: 21, col: 21),
            Coordinate(row: 21, col: 23),
            
            Coordinate(row: 22, col: 1), Coordinate(row: 22, col: 3), Coordinate(row: 22, col: 5),
            Coordinate(row: 22, col: 7), Coordinate(row: 22, col: 8), Coordinate(row: 22, col: 9),
            Coordinate(row: 22, col: 10), Coordinate(row: 22, col: 11), Coordinate(row: 22, col: 12),
            Coordinate(row: 22, col: 13), Coordinate(row: 22, col: 14), Coordinate(row: 22, col: 15),
            Coordinate(row: 22, col: 17), Coordinate(row: 22, col: 19), Coordinate(row: 22, col: 21),
            Coordinate(row: 22, col: 23),
            
            Coordinate(row: 23, col: 5), Coordinate(row: 23, col: 7), Coordinate(row: 23, col: 8),
            Coordinate(row: 23, col: 9), Coordinate(row: 23, col: 10), Coordinate(row: 23, col: 11),
            Coordinate(row: 23, col: 12), Coordinate(row: 23, col: 13), Coordinate(row: 23, col: 14),
            Coordinate(row: 23, col: 15), Coordinate(row: 23, col: 17), Coordinate(row: 23, col: 19),
            Coordinate(row: 23, col: 20), Coordinate(row: 23, col: 21), Coordinate(row: 23, col: 22),
            Coordinate(row: 23, col: 23)
        ]

        for coord in barrierSet {
            grid.cells[coord.row][coord.col].isBarrier = true
        }
    }
}


