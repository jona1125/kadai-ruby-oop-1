class Team

  attr_accessor :name, :win, :lose, :draw 
  
    def initialize(name, win, lose, draw)
        self.name = name
        self.win = win
        self.lose = lose
        self.draw = draw
    end
    
    def calc_win_rate
        return win.to_f / (win.to_f + lose.to_f)
    end
    
    def show_team_result
        puts "#{self.name}が#{self.win}勝#{self.lose}負#{self.draw}分、勝率は#{calc_win_rate.to_f}です。"
    end
end

giants = Team.new('Giants', 67, 45, 8)
tigers = Team.new('Tigers', 60, 53, 7)
dragons =Team.new('Dragons', 60, 55, 5)
baystars = Team.new('Baystars', 56, 58, 6)
carp = Team.new('Carp', 52, 56, 12)
swallows = Team.new('Swallows', 41, 69, 10)

teams=[giants, tigers, dragons, baystars, carp, swallows]
teams.each do |team|
    team.show_team_result
end