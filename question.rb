module MathGame
  class Question

    def initialize
      @f_number = Random.rand(1..20)
      @s_number = Random.rand(1..20)
      @answer = @f_number + @s_number
    end

    def question
      "What does #{@f_number} plus #{@s_number} equal?"
    end
    
    def correct? answer
      answer == @answer
    end

  end
end