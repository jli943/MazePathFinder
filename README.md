# MazePathFinder

This SwiftUI-based iOS app implements a grid-based pathfinding application that allows users to generate random mazes using different maze generator algorithms and find the shortest path through the maze using different search algorithms. The app follows the MVVM architecture to manage the data and UI separation effectively.

## Features

- Generate Random Maze: The app uses different algorithms like DFS(BackTracking) to generate a random maze on a grid. Users can adjust teh shape of the maze.
- Find Shortest Path: Users can select different algorithms like Dijkstra to find the shortest path between any two points in the gird.
- Visual Representation: The app provides an interactive grid-based visual representation of the maze and the shortest path, making it easy for users to understand the process.


## MVVM Architecture

The app follows the Model-View-ViewModel (MVVM) architectural pattern to manage the data and user interface separation. The key components of the MVVM architecture include:

1. Model: Represents the data and business logic of the application. In this app, it includes the structure and logic of Node/Grid/AlgoMaze/AlgoSearch

2. View: Represents the user interface. SwiftUI views are used to create the visual elements and layout of the app. In this app, it includes the UI of Grid and different Buttons.

3. ViewModel: Acts as an intermediary between the Model and the View. It holds the app's state and data that needs to be displayed on the UI. It also communicates with the Model to fetch data and update it based on user interactions. 

## Demo

### No Maze

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/noMaze/dijkstra.gif" alt="GIF 1" width="133">
      <br>
      Dijkstra
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/noMaze/astar.gif" alt="GIF 2" width="133">
      <br>
      A-Star
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/noMaze/greedy.gif" alt="GIF 3" width="133">
      <br>
      Greedy
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/noMaze/bfs.gif" alt="GIF 4" width="133">
      <br>
      BFS
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/noMaze/dfs.gif" alt="GIF 5" width="133">
      <br>
      DFS
    </td>
  </tr>
</table>

### Maze(Unweight)

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/unweightMaze/dij.gif" alt="GIF 1">
      <br>
      Dijkstra
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/unweightMaze/astar.gif" alt="GIF 2">
      <br>
      A-Star
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/unweightMaze/greedy.gif" alt="GIF 3">
      <br>
      Greedy
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/unweightMaze/bfs.gif" alt="GIF 4">
      <br>
      BFS
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/unweightMaze/dfs.gif" alt="GIF 5">
      <br>
      DFS
    </td>
  </tr>
</table>

### Maze(Weight)

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/weightMaze/dijksrta.gif" alt="GIF 1">
      <br>
      Dijkstra
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/weightMaze/astar.gif" alt="GIF 2">
      <br>
      A-Star
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/weightMaze/greedy.gif" alt="GIF 3">
      <br>
      Greedy
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/weightMaze/bfs.gif" alt="GIF 4">
      <br>
      BFS
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/weightMaze/dfs.gif" alt="GIF 5">
      <br>
      DFS
    </td>
  </tr>
</table>




## Shortest Path Finding (AlgoSearch)

### Breadth-First Search (BFS) Algorithm - Unweighted/Guarantee shortest path

The Breadth-First Search algorithm is used for finding the shortest path through the generated maze. BFS is a graph traversal algorithm that explores all the vertices at the current depth level before moving to the next level. In the context of the maze grid, BFS starts from the selected starting point and explores neighboring cells level by level until the destination point is reached. This guarantees that the first path found is the shortest one, making it ideal for pathfinding in unweighted graphs like the maze grid.

### Dijkstra's Algorithm - Weighted/Guarantee shortest path

Reference: https://builtin.com/software-engineering-perspectives/dijkstras-algorithm

### A Search - Weighted/Guarantee shortest path

Reference: https://medium.com/@nicholas.w.swift/easy-a-star-pathfinding-7e6689c7f7b2

### Greedy Best-First Search - Weighted/Not guarantee shortest path


## Maze Generation (AlgoMaze)

### Depth-First Search (DFS) Algorithm

1. Given a current cell as a parameter

2. Mark the current cell as visited

3. While the current cell has any unvisited neighbour cells

    1. Choose one of the unvisited neighbours
    
    2. Remove the wall between the current cell and the chosen cell
    
    3. Invoke the routine recursively for the chosen cell

 
![Generate Maze randomly](https://github.com/jli943/MazePathFinder/blob/main/Photos/unweightMaze/mazeGenerate.gif)   
Reference: https://en.wikipedia.org/wiki/Maze_generation_algorithm



## Contact

For any questions or feedback, please contact [Jimmy Li](mailto:jimmy94309@gmail.com).
