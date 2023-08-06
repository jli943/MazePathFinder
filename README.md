# MazePathFinder

This SwiftUI-based iOS app implements a grid-based pathfinding application that allows users to generate random mazes and find the shortest path through the maze using different search algorithms. The app follows the MVVM architecture to manage the data and UI separation effectively.

## Features

- Three different Grids: No Maze/Unweigt Maze/Weight Maze
- Generate Random Maze: The app uses DFS(BackTracking) to generate a random maze on a grid.
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
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/noMaze/dijkstra.gif" alt="GIF 1">
      <br>
      Dijkstra
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/noMaze/astar.gif" alt="GIF 2" >
      <br>
      A-Star
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/noMaze/greedy.gif" alt="GIF 3" >
      <br>
      Greedy
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/noMaze/bfs.gif" alt="GIF 4">
      <br>
      BFS
    </td>
    <td align="center">
      <img src="https://github.com/jli943/MazePathFinder/blob/main/Photos/noMaze/dfs.gif" alt="GIF 5">
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

### Dijkstra's Algorithm - Weighted/Guarantee shortest path
Able to find all shortest paths to every node in grid
Reference: https://builtin.com/software-engineering-perspectives/dijkstras-algorithm

### A-Star Search - Weighted/Guarantee shortest path
Arguably the best pathfinding algorithm, f = g + h, uses heuristics to guarantee the shortest path much faster than Dijkstra's Algorithm.
Need to know the location of Start and Target node. 
Reference: https://medium.com/@nicholas.w.swift/easy-a-star-pathfinding-7e6689c7f7b2

### Greedy Best-First Search - Weighted/Not guarantee shortest path
A faster, more heuristic-heavy version of A-Star
Does not guarantee the shortest path

### Breadth-First Search (BFS) Algorithm - Unweighted/Guarantee shortest path
Able to find the shorest path, need count the distance to start node while searching
cannot be used in weight graph. If weight == 1, Dijkstra and BFS are the same.

### Breadth-First Search (BFS) Algorithm - Unweighted/Not guarantee shortest path
So bad, not use it.


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
