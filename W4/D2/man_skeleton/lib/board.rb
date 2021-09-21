class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {[]}
    self.place_stones
    @player1 = name1
    @player2 = name2
  end

  def place_stones
    4.times do
    cups[0..5].each {|cup| cup << :stone }
    cups[7..12].each {|cup| cup << :stone }
    end
  end

  def valid_move?(start_pos)
    if start_pos > 13 || start_pos < 0
      raise "Invalid starting cup"
    elsif cups[start_pos].empty?
      raise "Starting cup is empty"
    end
    true
  end

  def make_move(start_pos, current_player_name)
    hand = []
    (cups[start_pos].length).times {hand << cups[start_pos].pop}
    i = start_pos + 1
    until hand.empty?
      index = i % 14
      if (index >= 0 && index <= 5) || (index >= 7 && index <= 12)
        cups[index] << hand.pop
      elsif index == 6 && current_player_name == @player1
        cups[index] << hand.pop
      elsif index == 13 && current_player_name == @player2
        cups[index] << hand.pop
      end
      i += 1 
    end
    next_turn(i - 1 % 14)

  end

  def next_turn(ending_cup_idx)
    if (ending_cup_idx == 6 && current_player_name == @player1) || (ending_cup_idx == 13 && current_player_name == @player2)
      return :prompt
    elsif !cups[ending_cup_idx].include?(:stone)
      return :switch
    else return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
