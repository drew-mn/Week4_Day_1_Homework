class RockPaperScissors

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    if @hand1 == "rock" && @hand2 == "paper"
      return "Paper wraps Rock. Paper Wins!!!"
    elsif @hand1 == "scissors" && @hand2 == "paper"
      return "Scissors cut Paper. Scissors Wins!!!"
    elsif @hand1 == "scissors" && @hand2 == "rock"
      return "Rock breaks Scissors. Scissors Wins!!!"
    elsif @hand1 == "paper" && @hand2 == "rock"
      return "Paper wraps Rock. Paper Wins!!!"
    elsif @hand1 == "paper" && @hand2 == "scissors"
      return "Scissors cut Paper. Scissors Wins!!!"
    elsif @hand1 == "rock" && @hand2 == "scissors"
      return "Rock blunts Scissors. Rock Wins!!!"

    elsif @hand1 == @hand2
      return "It's a Draw!!!"
    end
  end

end
