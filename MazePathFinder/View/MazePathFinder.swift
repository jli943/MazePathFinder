//
//  ContentView.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

struct MazePathFinder: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack(spacing: 5) {
            
            VStack{
                HStack(spacing: 50) {
                    Menu {
                        ForEach(viewModel.mazeMenu) { maze in
                            Button(action: {
                                viewModel.maze = maze
                                viewModel.chooseMaze()
                            })
                            {
                                Text(maze.name)
                                    .font(.headline)
                            }
                        }
                    } label: {
                        HStack {
                            if let maze = viewModel.maze {
                                Text("\(maze.name)")
                                    .foregroundColor(.white)
                                    .bold()
                            } else{
                                Text("Maze")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            Image(systemName: "chevron.down")
                                .foregroundColor(.white)
                                .font(Font.system(size: 14).weight(.bold))
                        }
                        .padding(12)
                        .font(.title)
                        .background(.orange)
                        .cornerRadius(8)
                        .shadow(color: Color.gray.opacity(0.3), radius: 4, x: 0, y: 2)
                    }
                    
                    Menu {
                        ForEach(viewModel.algoritrhmsMenu) { algorithm in
                            Button(action: {
                                viewModel.algorithm = algorithm
                                viewModel.chooseSearchAlgo()
                            }) {
                                Text(algorithm.name)
                                
                            }
                        }
                    } label: {
                        HStack {
                            if let algorithm = viewModel.algorithm{
                                Text("\(algorithm.name)")
                                    .foregroundColor(.white)
                                    .bold()
                            }else{
                                Text("AlgoSearch")
                                    .foregroundColor(.white)
                                    .bold()
                                
                            }
                            Image(systemName: "chevron.down")
                                .foregroundColor(.white)
                                .font(Font.system(size: 14).weight(.bold))
                        }
                        .padding(6)
                        .font(.title)
                        .background(.green)
                        .cornerRadius(8)
                        .shadow(color: Color.gray.opacity(0.3), radius: 4, x: 0, y: 2)
                    }
                    
                    
                    // Start Button
                    Button("Search") {
                        withAnimation {
                            viewModel.startSearch()
                        }
                    }
                    .buttonStyle(CustomButtonStyle(color: .cyan))
                    
                    // Find Path Button
                    Button("ShortPath") {
                        withAnimation {
                            viewModel.findShortestWay()
                        }
                    }
                    .buttonStyle(CustomButtonStyle(color: .yellow))
                    
                    // Reset Button
                    Button("Reset") {
                        viewModel.ResetGraph()
                    }
                    .buttonStyle(CustomButtonStyle(color: .red))
                }
                .padding()
                .background(Color.brown)
                .cornerRadius(12)
                .shadow(color: Color.gray.opacity(0.3), radius: 4, x: 0, y: 2)
                HStack{
                    Spacer()
                    Text("SearchNode: \(viewModel.grid.searchNode)")
                        .font(.title)
                        .bold()
                    Spacer()
                    Text("ShortPath: \(viewModel.grid.shortPath)")
                        .font(.title)
                        .bold()
                    Spacer()
                }
                
            }
            
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
        MazePathFinder(viewModel: vM)
    }
}
