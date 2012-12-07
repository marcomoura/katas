class View
  def initialize layout
    @layout = layout
    @row = -1
    @result = Array.new
  end

  def render
    @layout.each_line do |line|
      new_row
      line.each_char do |char|
        if char == 'x'
          filled 
        elsif char == '_'
          letter
        end
      end
    end
    
    "#{@result.join("\n")}\n"
  end

  private

  def new_row
    @row+=1 
    @result[@row] = Array.new
    @result[@row][0] = ''
    @result[@row][1] = ''
    @result[@row][2] = ''
    @result[@row][3] = ''
  end

  def filled
    @result[@row][0] << row_filled
    @result[@row][1] << row_filled
    @result[@row][2] << row_filled
    @result[@row][3] << row_filled
  end

  def letter
    @result[@row][0] << row_filled
    @result[@row][1] << row_letter
    @result[@row][2] << row_letter
    @result[@row][3] << row_filled
  end

  def row_filled
    '######'
  end

  def row_letter
    '#    #'
  end
end
