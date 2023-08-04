//
//  Node.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import Foundation

struct Node: Identifiable, Comparable, Hashable {
    var id = UUID()
    var coord: Coordinate
    var weight = 1
    var onPath = false
    var isBarrier = false
    
    //for A* f(aStarF) = g(distance) + h(heuristic)
    var aStarF:Int?
    var heuristic:Int?
    var distance: Int?
    
    // Conform to the Comparable protocol
    static func < (lhs: Node, rhs: Node) -> Bool {
        
        // First, check if both nodes have a valid aStarF value. If not, compare based on distance.
        if let lhsAStarF = lhs.aStarF, let rhsAStarF = rhs.aStarF {
            return lhsAStarF < rhsAStarF
        }
        
        if let lhsHeuristic = lhs.heuristic, let rhsHeuristic = rhs.heuristic {
            return lhsHeuristic < rhsHeuristic
        }
        
        // Assume that nodes without a distance are considered greater (placed farther) than nodes with a distance
        if lhs.distance == nil {
            return false
        } else if rhs.distance == nil {
            return true
        }
        
        // Compare based on distance
        return lhs.distance! < rhs.distance!
    }
    
}
