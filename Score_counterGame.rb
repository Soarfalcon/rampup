class CLI
  def initialize(args)
    @options = args
    @league_points = LeaguePoints.new
  end

  def ask_scores
   while true do
     puts "Press 1 to add a team score and press 2 to calculate league points or type exit to exit"
     input = gets.chomp

     case input

     when '1'
       @league_points.get_score
     when '2'
       @league_points.print_lp
     when 'exit'
       return false
     end
   end
  end

  def run!
    ask_scores
  end
end

class LeaguePoints
  attr_accessor :team_list
  def initialize
    @team_list = []
  end

  def get_score
    puts "Enter the final team scores (Ex: Eagles 12 Cowboys 15):"
    score_line = gets.chomp.split
    calculate_lp(score_line)
  end

  def calculate_lp(score_line)
    home_team = find_team(score_line[0])
    away_team = find_team(score_line[2])
    home_score = score_line[1].to_i
    away_score = score_line[3].to_i

    if home_score > away_score
      home_team.league_points += 3
    elsif home_score < away_score
      away_team.league_points += 3
    else
      home_team.league_points += 1
      away_team.league_points += 1
    end
  end

  def find_team(team_name)
    a_team = team_list.find { |team| team.name == team_name }
    (a_team = Team.new(team_name) and add_team_to_list(a_team)) if a_team.nil?
    a_team
  end

  def add_team_to_list(team)
    team_list << team
  end

  def sorted_list
    team_list.sort_by { |team| [-team.league_points, team.name] }
    #list_by_name = team_list.sort_by {|team| team.name}
    #list_by_name.sort {|a,b| b.league_points <=> a.league_points}
  end

  def print_lp
    puts "---------------------------"
    sorted_list.each do |team|
      puts "#{team.name}: #{team.league_points} points."
    end
    puts "---------------------------"
  end
end

class Team
  attr_accessor :name, :league_points
  def initialize(name, league_points=0)
    @name = name
    @league_points = league_points
  end
end

if $0 == __FILE__
  CLI.new(ARGV).run!
end
