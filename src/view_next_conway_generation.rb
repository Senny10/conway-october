require_relative './number_of_living_neighbours.rb'
require_relative './conway_rule.rb'

def view_next_conway_generation(generation)
  next_generation = []
  generation.each do |row|
    future_row = []
    row.each do |cell|
      future_row << conway_rule(cell,number_of_living_neigbours(cell,row:0,column:0))
    end
    next_generation << future_row
  end
  next_generation
end
