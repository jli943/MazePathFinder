//
//  Pathfinding_VisualizerApp.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//w

import SwiftUI

@main
struct MazePathFinderApp: App {
    var vM = ViewModel()
    var body: some Scene {
        WindowGroup {
            MazePathFinder(viewModel: vM)
        }
    }
}
