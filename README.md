# MazePathFinder

This SwiftUI-based iOS app implements a grid-based pathfinding application that allows users to generate random mazes using different maze generator algorithms and find the shortest path through the maze using different search algorithms. The app follows the MVVM architecture to manage the data and UI separation effectively.

## Features

- Generate Random Maze: The app uses different algorithms like DFS(BackTracking) to generate a random maze on a grid. Users can adjust teh shape of the maze.
- Find Shortest Path: Users can select different algorithms like Dijkstra to find the shortest path between any two points in the gird.
- Visual Representation: The app provides an interactive grid-based visual representation of the maze and the shortest path, making it easy for users to understand the process.

## Requirements

- Xcode 12.0 or later
- Swift 5.0 or later
- iOS 16.4 or later

## MVVM Architecture

The app follows the Model-View-ViewModel (MVVM) architectural pattern to manage the data and user interface separation. The key components of the MVVM architecture include:

1. Model: Represents the data and business logic of the application. In this app, it includes the structure of Node/Grid/AlgoMaze/AlgoSearch

2. View: Represents the user interface. SwiftUI views are used to create the visual elements and layout of the app. In this app, it includes the UI of Grid and different Buttons.

3. ViewModel: Acts as an intermediary between the Model and the View. It holds the app's state and data that needs to be displayed on the UI. It also communicates with the Model to fetch data and update it based on user interactions. In this app, it includes ViewModel of Grid/Details of AlgoMaze/Details of AlgoSearch.

## Demo

![MazePathFinder Demo]([https://raw.githubusercontent.com/your-username/repo-name/master/path/to/gif.gif](https://github.com/jli943/MazePathFinder/blob/main/Photos/Simulator%20Screen%20Recording%20-%20iPad%20Pro%20(12.9-inch)%20(6th%20generation)%20-%202023-08-01%20at%2014.42.00.gif))


## Maze Generation (AlgoMaze)

### Depth-First Search (DFS) Algorithm

The Depth-First Search algorithm is used for maze generation. It works by starting at a random cell in the grid and randomly picking a neighbor that has not been visited yet. The algorithm moves to that neighbor, marks it as visited, and continues the process recursively from the newly visited cell. If a cell has no unvisited neighbors, the algorithm backtracks to the previous cell and continues the process. This creates a randomized path through the grid, effectively generating a maze with unique paths.

## Shortest Path Finding (AlgoSearch)

### Breadth-First Search (BFS) Algorithm

The Breadth-First Search algorithm is used for finding the shortest path through the generated maze. BFS is a graph traversal algorithm that explores all the vertices at the current depth level before moving to the next level. In the context of the maze grid, BFS starts from the selected starting point and explores neighboring cells level by level until the destination point is reached. This guarantees that the first path found is the shortest one, making it ideal for pathfinding in unweighted graphs like the maze grid.

## Usage

1. Upon launching the app, a grid representing the maze will be displayed.
2. Tap the "AlgoMaze" menu to create a random maze using selected algorithm.
3. Tap the "AlgoSearch" menu to select search algorithm.
4. Tap the "Start" button to find the target using selected search algorithm.
5. Tap the "ShortPath" button to find the shortest path to target node.
6. Tap the "Reset" button to reset the grid.


## Contact

For any questions or feedback, please contact [Jimmy Li](mailto:jimmy94309@gmail.com).
