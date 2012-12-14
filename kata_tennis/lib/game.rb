require 'state_machine'

class Game

  state_machine :score, initial: 0 do
    event :point do
      transition 0 => 15
      transition 15 => 30
      transition 30 => 40
    end

    after_transition 30 => 40, :do => :change_mode
  end

  state_machine :mode, :initial => :advantage do
    event :change_mode do
      transition :advantage => :dulce, :if => lambda{ |game| game.score_name > 30 }
      transition :dulce => :advantage
    end
  end

end
