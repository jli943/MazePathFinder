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
            ForEach(0..<viewModel.grid.width, id: \.self) { x in
                ForEach(0..<viewModel.grid.height, id: \.self) { y in
                    CellView(cell: viewModel.grid.cells[x][y])
                        .overlay(getSymbol(for: viewModel.grid.cells[x][y]))
                }
            }
        }
        .padding()
    }
    
    private func createColumns() -> [GridItem] {
        var columns = [GridItem]()
        for _ in 0..<viewModel.grid.width {
            columns.append(GridItem(.flexible(), spacing: 0))
        }
        return columns
    }
    
    private func getSymbol(for cell: Node) -> some View {
        if cell.coord.x == viewModel.startPoint.x && cell.coord.y == viewModel.startPoint.y {
            return AnyView(Image(systemName: "star.fill")
                .font(.system(size: 20))
                .foregroundColor(.yellow))
        } else if cell.coord.x == viewModel.targetPoint.x && cell.coord.y == viewModel.targetPoint.y {
            return AnyView(Image(systemName: "flag.fill")
                .font(.system(size: 20))
                .foregroundColor(.red))
        } else {
            return AnyView(EmptyView())
        }
    }
}

struct CellView: View {
    var cell: Node

    var body: some View {
        Rectangle()
            .foregroundColor(cell.onPath ? .yellow : (cell.visited ? .blue : .green))
            .frame(minWidth: 40, minHeight: 40)
            .border(Color.gray, width: 1)
    }
}




