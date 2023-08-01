//
//  Pathfinding_VisualizerApp.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//w

import SwiftUI

@main
struct Pathfinding_VisualizerApp: App {
    var vM = ViewModel()
    var body: some Scene {
        WindowGroup {
            PathfindingVisualizer(viewModel: vM)
        }
    }
}
