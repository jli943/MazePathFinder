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
    var distance: Int?
    var onPath = false
    var isBarrier = false
    
    // Conform to the Comparable protocol
    static func < (lhs: Node, rhs: Node) -> Bool {
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
