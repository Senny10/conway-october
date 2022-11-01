def number_of_living_neigbours(grid,row:,column:)
  count = 0
  for r in grid do
    for cell in r do
      if (cell == :alive)
        count += 1
      end
    end
  end
  
  return count
  # if ((row == 0 && column == 0) || (row == 1 && column == 0))
  #   return 1
  # elsif (row == 2 && column == 2)
  #   return 2
  # else
  #   return 0
  # end
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
