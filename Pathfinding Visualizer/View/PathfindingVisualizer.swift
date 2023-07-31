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
        VStack(spacing: 16) {
            
            HStack(spacing: 100) {
                // Start Button
                Button("Start") {
                    withAnimation {
                        viewModel.startSearch()
                    }
                }
                .buttonStyle(CustomButtonStyle(color: .cyan))
                
                // Find Path Button
                Button("Find Path") {
                    withAnimation {
                        viewModel.findShortestWay()
                    }
                }
                .buttonStyle(CustomButtonStyle(color: .yellow))
                
                
                Menu {
                    ForEach(viewModel.algorithms) { algorithm in
                        Button(action: {
                            viewModel.algorithm = algorithm
                        }) {
                            Text(algorithm.name)
    
                        }
                    }
                } label: {
                    HStack {
                        Text("\(viewModel.algorithm.name)")
                            .foregroundColor(.white)
                            .bold()
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                            .font(Font.system(size: 14).weight(.bold))
                    }
                    .padding(12)
                    .font(.title)
                    .background(.green)
                    .cornerRadius(8)
                    .shadow(color: Color.gray.opacity(0.3), radius: 4, x: 0, y: 2)
                }
                
                Menu {
                    ForEach(viewModel.mazes) { maze in
                        Button(action: {
                            viewModel.maze = maze
                            viewModel.chooseMaze()
                            
                        }) {
                            Text(maze.name)
    
                        }
                    }
                } label: {
                    HStack {
                        Text("\(viewModel.maze.name)")
                            .foregroundColor(.white)
                            .bold()
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                            .font(Font.system(size: 14).weight(.bold))
                    }
                    .padding(12)
                    .font(.title)
                    .background(.green)
                    .cornerRadius(8)
                    .shadow(color: Color.gray.opacity(0.3), radius: 4, x: 0, y: 2)
                }
                
                
                
                // Reset Button
                Button("Reset") {
                    viewModel.resetGrid()
                }
                .buttonStyle(CustomButtonStyle(color: .red))
            }
            .padding()
            .background(Color.brown)
            .cornerRadius(12)
            .shadow(color: Color.gray.opacity(0.3), radius: 4, x: 0, y: 2)
            
            GridView(viewModel: viewModel)
            
            
        }
        .padding()
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct CustomButtonStyle: ButtonStyle {
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding(12)
            .background(color)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .font(.title)
            .fontWeight(.bold)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let vM = ViewModel()
        PathfindingVisualizer(viewModel: vM)
    }
}
