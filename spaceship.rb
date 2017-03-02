require 'pry'
class SpaceShip
  attr_accessor :spaceship_name, :health
  def initialize(spaceship_name, health)
    @spaceship_name = spaceship_name 
    @health = health
  end

  def fires_on (enemy)   #change name to enemy later on after you figure out everything. 
    enemy.takes_a_hit
  end  

  def takes_a_hit
  @health = @health - 1
  puts spaceship_name
  p @health
  end

  def take_off (count_down = 5)
    until count_down <= 0
      puts "#{count_down}"
      sleep 0.5
      count_down -= 1
    end
    puts @spaceship_name + " blasting off!!!"
  end
  def user_command (enemy)
      user_input = gets.chomp
  if user_input == 'takeoff'
    take_off
  elsif user_input == 'fire'
    fires_on (enemy)
  elsif user_input == 'help'
    puts '----list of commands----'
    p 'take off = takeoff ', 'fire = fire'
  else
    puts 'wrong command'
    puts "type 'help' to see more commands"
  end
  end
end
defiant = SpaceShip.new("defiant", 10)


# defiant.take_off 5
# defiant.fires_on enterprise


