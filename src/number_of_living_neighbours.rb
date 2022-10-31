
def number_of_living_neigbours(grid,row:,column:)
  result = 0


  for r in -1..1 do
    for c in -1..1 do
        next if c == 0 and r == 0
        row = grid[row + r]
        neighbour = row[column + c] unless row.nil?
        # skip the home cell
        
        if neighbour == :alive
            result = result + 1
        end

    end
  end
  result
end
