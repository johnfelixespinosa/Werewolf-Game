# One player simulation game, trying to find the werewolf
require 'pry'

class WerewolfGame

  def initialize
    @num_of_players = 0
    @players = []

    @num_of_wolves = 0
    @wolves = []
  end

  def gamestart
    puts "Welcome to the Werewolf simulator"
    puts "How many players are there going to be? (1-10)"
    how_many_players
  end

  def how_many_players
    player_input = gets.to_i
    if player_input > 10
      puts "Too many players please try again..."
      gamestart
    elsif player_input <= 1
      puts "Ok werewolf, please try again..."
      gamestart
    elsif player_input > 1 && player_input < 10
      puts "Ok, we are playing with #{player_input} players."
      @num_of_players == player_input
      @num_of_players.times do 
        player_names
      end
  end
      puts "The players are #{@players}"
      how_many_wolves
  end

  def player_names
      puts "Please enter the name of a player"
      player_name = gets.chomp
      @players << player_name
      puts "Player added"
  end

  def how_many_wolves
      @num_of_wolves = @num_of_players / 4
    if @num_of_wolves == 0 
      @num_of_wolves += 1 
      puts "There will be #{@num_of_wolves} wolf in this game, everyone else is a villager."
    else
      puts "There will be #{@num_of_wolves} wolves in this game, everyone else is a villager."
    end
    assign_roles
  end

  def assign_roles
    @num_of_wolves.times do @wolves << @players.sample
    binding.pry
    #guess_wolf
    end
  end

  #def guess_wolf
  #end  













end

game = WerewolfGame.new
game.gamestart
