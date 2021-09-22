class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over == true
      self.take_turn
    end
      game_over_message
      reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    if game_over == false
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    seq.each do |color|
      puts color
      sleep(1)
    end
    system("clear")
  end

  def require_sequence
    puts "Enter each color, in order, separated by a comma"
    user_seq = gets.chomp.split(",")
    user_seq.map(&:to_i)
    system("clear")
    @game_over = true if user_seq != @seq
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Hooray"
  end

  def game_over_message
    puts "You lost, try again!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

game = Simon.new
game.play