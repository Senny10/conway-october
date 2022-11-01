def number_of_living_neigbours(grid,row:,column:)

  count = 0
  if ( grid[row-1]) 
    if (grid[row-1][column-1] == :alive)
      count += 1
    end
  end

  if (grid[row-1])
    if (grid[row-1][column] == :alive)
      count += 1
    end
  end

  if (grid[row-1])
    if (grid[row-1][column+1] == :alive)
      count += 1
    end
  end

  if (grid[row])
    if (grid[row][column-1] == :alive)
      count += 1
    end
  end

  if (grid[row+1])
    if(grid[row+1][column-1] == :alive)
      count += 1
    end
  end

  if (grid[row+1])
    if(grid[row+1][column] == :alive)
      count += 1
    end
  end

  if (grid[row+1])
    if(grid[row+1][column+1] == :alive)
      count += 1
    end
  end

  if (grid[row])
    if(grid[row][column+1] == :alive)
      count += 1
    end
  end      

  return count

  # [(0,0), (0,1), (0,2)],
  # [(1,0), (1,1), (1,2)],
  # [(2,0), (2,1), (2,2)]


end





















# def number_of_living_neigbours(grid,row:,column:)
#   result = 0


#   for r in -1..1 do
#     for c in -1..1 do
#         next if c == 0 and r == 0
#         row = grid[row + r]
#         neighbour = row[column + c] unless row.nil?
#         # skip the home cell
        
#         if neighbour == :alive
#             result = result + 1
#         end

#     end
#   end
#   result
# end
