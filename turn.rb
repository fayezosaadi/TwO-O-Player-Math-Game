module MathGame
  class Turn

    def initialize (player)
      puts '----- NEW TURN -----'
      current_question = Question.new
      puts "#{player.name}: #{current_question.question}"
      print "> "
      @answer = gets.chomp.to_i
      if current_question.correct?(@answer)
        puts "#{player.name}: Yaaaasssss!"
      else
        player.lose_life
        puts "#{player.name}: Wrong Answer!"
      end
    end

  end
end