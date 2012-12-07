require_relative 'view'

class Puzzle
  def initialize file
    puzz_file = File.read file
    @view = View.new puzz_file
  end

  def crossword
    @view.render 
  end

end
