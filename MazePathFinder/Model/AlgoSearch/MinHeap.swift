//
//  MinHeap.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/8/1.
//

import Foundation

class MinHeap<T: Comparable> {
    var heap: [T] = []
    
    // Insert a new element into the heap
    func insert(_ element: T) {
        heap.append(element)
        var currentIndex = heap.count - 1
        
        // Bubble up the element until the
        // heap property is restored
        while currentIndex > 0 && heap[currentIndex] < heap[(currentIndex - 1) / 2] {
            heap.swapAt(currentIndex, (currentIndex - 1) / 2)
            currentIndex = (currentIndex - 1) / 2
        }
    }
    
    func contains(_ element:T)-> Bool{
        heap.contains(element)
    }
    
    // Remove and return the top
    // element of the heap
    func remove() -> T? {
        guard !heap.isEmpty else {
            return nil
        }
        
        let topElement = heap[0]
        
        if heap.count == 1 {
            heap.removeFirst()
        } else {
            
            // Replace the top element
            // with the last element in
            // the heap
            heap[0] = heap.removeLast()
            var currentIndex = 0
            
            // Bubble down the element until
            // the heap property is restored
            while true {
                let leftChildIndex = 2 * currentIndex + 1
                let rightChildIndex = 2 * currentIndex + 2
                
                // Determine the index of
                // the smaller child
                var minIndex = currentIndex
                if leftChildIndex < heap.count && heap[leftChildIndex] < heap[minIndex] {
                    minIndex = leftChildIndex
                }
                if rightChildIndex < heap.count && heap[rightChildIndex] < heap[minIndex] {
                    minIndex = rightChildIndex
                }
                
                // If the heap property is
                // restored, break out of the loop
                if minIndex == currentIndex {
                    break
                }
                
                // Otherwise, swap the current
                // element with its smaller child
                heap.swapAt(currentIndex, minIndex)
                currentIndex = minIndex
            }
        }
        
        return topElement
    }
    
    // Get the top element of the
    // heap without removing it
    func peek() -> T? {
        return heap.first
    }
    
    // Check if the heap is empty
    var isEmpty: Bool {
        return heap.isEmpty
    }
}
