//
//  Dijkstra.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/8/1.
//

import SwiftUI

extension ViewModel{
    func dijkstra (){
//        let minHeap = MinHeap<Node>()
//        self.grid.startNode.distance = 0
//        minHeap.insert(grid.startNode)
//        var visitedNodes: Set<Node> = []
//        while !minHeap.isEmpty{
//            if let curNode = minHeap.remove(){
//                if visitedNodes.contains(curNode){
//                    continue
//                }
//                visitedNodes.insert(curNode)
//                if curNode == grid.targetNode{
//                    return
//                }
//                print(grid.neighborNodes(node: curNode))
//                for i in 0..<grid.neighborNodes(node: curNode).count{
//                    var neighbor = grid.neighborNodes(node: curNode)[i]
//                    if !visitedNodes.contains(neighbor){
//                        let newDistance = (curNode.distance ?? Int.max) + 1
//                        if newDistance < (neighbor.distance ?? Int.max) {
//                            grid.neighborNodes(node: curNode)[i].distance = newDistance
//                            minHeap.insert(grid.neighborNodes(node: curNode)[i])
//                        }
//                    }
//                    
//                }
//            }
//            
//        }
//        
        
    }
}
