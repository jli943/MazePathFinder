//
//  ContentView.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

struct PathfindingVisualizer: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            //BarView
            HStack {
                Spacer()
                Button("Start"){
                    viewModel.startSearch()
                }
                Spacer()
                Picker("Algorithm", selection: $viewModel.algorithm) {
                    ForEach(viewModel.algorithms, id: \.self) { algorithm in
                        Text(algorithm.name)
                    }
                }
                Button("Reset") {
                    viewModel.resetGrid()
                }
                Spacer()
            }
            //GridView
            GridView(viewModel:viewModel)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let vM = ViewModel()
        PathfindingVisualizer(viewModel: vM)
    }
}
