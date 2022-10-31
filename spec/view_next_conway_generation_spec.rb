require_relative '../src/view_next_conway_generation.rb'

describe "viewing the next generation in conway's game of life" do
  it 'stays the same for an empty grid' do
    empty_grid = [
      [:empty, :empty, :empty],
      [:empty, :empty, :empty],
      [:empty, :empty, :empty]
    ]

    expect(view_next_conway_generation(empty_grid)).to eq(empty_grid)
  end

  it 'returns an empty grid given one alive cell in the center' do
    one_cell_grid = [
      [:empty, :empty, :empty],
      [:empty, :alive, :empty],
      [:empty, :empty, :empty]
    ]

    empty_grid = [
      [:empty, :empty, :empty],
      [:empty, :empty, :empty],
      [:empty, :empty, :empty]
    ]

    expect(view_next_conway_generation(one_cell_grid)).to eq(empty_grid)
  end


  xit 'should return a non-empty grid when we implement a viable first generation' do
    viable_grid = [
      [:empty, :empty, :empty,:empty],
      [:empty, :alive, :alive,:empty],
      [:empty, :alive, :alive,:empty],
      [:empty, :empty, :empty,:empty]
    ]
    expect(view_next_conway_generation(viable_grid)).to eq viable_grid
  end
end

describe "how to calculate number of live neighbours in a conway grid" do

  two_col_x_one_row =  [[:empty, :alive]]
  one_col_x_two_row =  [[:empty], [:alive]]
  three_col_x_three_row = [
      [:alive, :empty, :empty],
      [:empty, :alive, :alive],
      [:alive, :empty, :empty]
    ]
  
  
  it "should tell me there is one live neighbour if one alive in a 2x1 grid" do
    two_by_one_grid = [[:empty, :alive]]
    number_of_neighbours = number_of_living_neigbours(two_by_one_grid,row: 0,column: 0)
    expect(number_of_neighbours).to eq 1
    expect(number_of_living_neigbours(two_col_x_one_row, row:0, column:0)).to eq 1
    expect(number_of_living_neigbours(two_col_x_one_row, row:0, column:1)).to eq 0
  end

  it "should tell me there is one live neighbour if one alive in a 1x2 grid" do
    
    expect(number_of_living_neigbours(one_col_x_two_row, row:0, column:0)).to eq 1
    expect(number_of_living_neigbours(one_col_x_two_row, row:1, column:0)).to eq 0

  end

  it "should tell me there is one live neighbour if one alive in a 3x3 grid" do
    
    expect(number_of_living_neigbours(three_col_x_three_row, row:0, column:0)).to eq 1
    expect(number_of_living_neigbours(three_col_x_three_row, row:1, column:1)).to eq 3

  end
end

