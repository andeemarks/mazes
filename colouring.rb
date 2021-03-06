require 'coloured_grid'
require 'binary_tree'

grid = ColouredGrid.new(25, 25)
BinaryTree.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]
grid.distances = start.distances

filename = "colourised.png"
grid.to_png.save(filename)
puts "Saved to #{filename}"