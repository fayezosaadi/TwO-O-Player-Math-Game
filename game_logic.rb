module MathGame
  class GameLogic

    def initialize
      @players = []
      @players << Player.new << Player.new
      @number_of_players = 2
      @game_over = false
    end

    def start
      puts "****************************************"
      puts "||                                    ||"
      puts "||    Welcome to the Math Game!       ||"
      puts "||                                    ||"
      puts "****************************************"
      
      player_counter = 0

      while (!@game_over) do
        current_player = @players[player_counter]
        next_player_counter = (player_counter + 1) % @number_of_players
        next_player = @players[next_player_counter]
        Turn.new current_player
        puts Player.score @players
        if (current_player.life == 0)
          @game_over = true
          puts "#{next_player.name} wins with a score of #{next_player.life}/3"

        end
        player_counter = next_player_counter
      end
      puts '----- GAME OVER -----'
      puts 'Good bye!'
    end

  end
end