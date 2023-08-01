# MazePathFinder

This SwiftUI-based iOS app implements a grid-based pathfinding application that allows users to generate random mazes using the Depth-First Search (DFS) algorithm and find the shortest path through the maze using the Breadth-First Search (BFS) algorithm. The app follows the MVVM architecture to manage the data and UI separation effectively.

## Features

- Generate Random Maze: The app uses the Depth-First Search (DFS) algorithm to generate a random maze on a grid. Users can adjust the size and complexity of the maze.
- Find Shortest Path: Users can select the starting and ending points on the maze grid, and the app uses the Breadth-First Search (BFS) algorithm to find the shortest path between the two points.
- Visual Representation: The app provides an interactive grid-based visual representation of the maze and the shortest path, making it easy for users to understand the process.
- Clean and Structured UI: The SwiftUI-based user interface follows a structured layout with easily navigable components, providing an intuitive user experience.

## Requirements

- Xcode 12.0 or later
- Swift 5.0 or later
- iOS 14.0 or later

## MVVM Architecture

The app follows the Model-View-ViewModel (MVVM) architectural pattern to manage the data and user interface separation. The key components of the MVVM architecture include:

1. Model: Represents the data and business logic of the application. In this app, it includes maze generation and pathfinding algorithms, maze grid data, and shortest path information.

2. View: Represents the user interface. SwiftUI views are used to create the visual elements and layout of the app.

3. ViewModel: Acts as an intermediary between the Model and the View. It holds the app's state and data that needs to be displayed on the UI. It also communicates with the Model to fetch data and update it based on user interactions.

## Maze Generation (mazeAlgo)

### Depth-First Search (DFS) Algorithm

The Depth-First Search algorithm is used for maze generation. It works by starting at a random cell in the grid and randomly picking a neighbor that has not been visited yet. The algorithm moves to that neighbor, marks it as visited, and continues the process recursively from the newly visited cell. If a cell has no unvisited neighbors, the algorithm backtracks to the previous cell and continues the process. This creates a randomized path through the grid, effectively generating a maze with unique paths.

## Shortest Path Finding (searchAlgo)

### Breadth-First Search (BFS) Algorithm

The Breadth-First Search algorithm is used for finding the shortest path through the generated maze. BFS is a graph traversal algorithm that explores all the vertices at the current depth level before moving to the next level. In the context of the maze grid, BFS starts from the selected starting point and explores neighboring cells level by level until the destination point is reached. This guarantees that the first path found is the shortest one, making it ideal for pathfinding in unweighted graphs like the maze grid.

## Installation

1. Clone or download the repository.
2. Open the project in Xcode.
3. Build and run the app on a simulator or a physical device.

## Usage

1. Upon launching the app, a grid representing the maze will be displayed.
2. Tap the "Generate Maze" button to create a random maze using DFS algorithm.
3. Choose the starting and ending points on the maze grid by tapping cells.
4. Tap the "Find Shortest Path" button to find the shortest path using BFS algorithm.
5. The shortest path will be highlighted on the maze grid.

## Future Enhancements

1. Add More Maze Generation Algorithms: Include more maze generation algorithms like Prim's algorithm, Kruskal's algorithm, etc., to offer users a variety of maze options.
2. Additional Pathfinding Algorithms: Implement more pathfinding algorithms like Dijkstra's algorithm, A* algorithm, etc., to provide users with different options for finding the shortest path.

## License

This project is licensed under the [MIT License](LICENSE).

## Contact

For any questions or feedback, please contact [Your Name](mailto:your-email@example.com).
