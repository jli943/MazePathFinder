//
//  GridView.swift
//  Pathfinding Visualizer
//
//  Created by Junwei Li on 2023/7/27.
//

import SwiftUI

struct GridView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        LazyVGrid(columns: createColumns(), spacing: 0) {
            ForEach(viewModel.grid.cells.indices, id: \.self) { x in
                ForEach(viewModel.grid.cells[x].indices, id: \.self) { y in
                    let cell = viewModel.grid.cells[x][y]
                    CellView(cell: cell)
                        .id(cell.id) // Use the cell's ID as the identifier
                        .overlay(getSymbol(for: cell))
                }
            }
        }
        .padding()
    }
    
    private func createColumns() -> [GridItem] {
        var columns = [GridItem]()
        for _ in 0..<viewModel.grid.colNumber {
            columns.append(GridItem(.flexible(), spacing: 0))
        }
        return columns
    }
    
    private func getSymbol(for cell: Node) -> some View {
        if cell.coord == viewModel.grid.startCoord{
            return AnyView(Image(systemName: "car.fill")
                .font(.system(size: 30))
                .foregroundColor(.black))
        } else if cell.coord == viewModel.grid.targetCoord {
            return AnyView(Image(systemName: "star.fill")
                .font(.system(size: 30))
                .foregroundColor(.green))
        } else {
            return AnyView(EmptyView())
        }
    }
}


struct CellView: View {
    var cell: Node
    @State private var cellColor: Color = .white
    @State private var cellWeight = 1
    
    var body: some View {
        Rectangle()
            .foregroundColor(cellColor)
            .frame(minWidth: 40, minHeight: 40)
            .border(Color.gray, width: 1)
            .overlay{
                ZStack{
                    if cellWeight > 1{
                        Text("\(cellWeight)")
                            .foregroundColor(.red)
                            .font(.system(size: 30, weight: .bold))
                        
                    }
                }
            }
            .onChange(of: cell.isBarrier){
                cellColor = $0 ? .black : .white
            }
            .onChange(of: cell.weight, perform: {
                cellWeight = $0
            })
            .onChange(of: cell.distance) { distance in
                if let cellDistance = distance {
//                    print(cellDistance)
                    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(cellDistance * 30)) {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            cellColor =  .cyan
                        }
                    }
                } else{
                    cellColor = .white
                }
            }
            .onChange(of: cell.onPath) { path in
                if path {
                    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(cell.distance! * 30)) {
                        withAnimation(.linear(duration: 0.5)) {
                            cellColor =  .yellow
                        }
                    }
                }
            }
    }
}








