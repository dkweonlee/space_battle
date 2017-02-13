require 'pry'
class SpaceShip
  attr_accessor :spaceship_name, :health, :enemy
  def initialize(spaceship_name, enemy_name, health)
    @spaceship_name = spaceship_name 
    @health = health
    @enemy = enemy_name 
  end

  def fires_on (spaceship_name)   #change name to enemy later on after you figure out everything. 
    takes_a_hit
  end  

  def takes_a_hit
  @health = @health - 1
  puts @spaceship_name + " health = " + @health.to_s
  end

  def take_off (count_down = 10)
    until count_down <= 0
      puts "#{count_down}"
      sleep 1
      count_down -= 1
    end
    puts @spaceship_name + " blasting off!!!"
  end
  def user_command
      user_input = gets.chomp
  if user_input == 'takeoff'
    take_off
  elsif user_input == 'fire'
    fires_on (@spaceship_name)
  elsif user_input == 'help'
    puts '----list of commands----'
    p 'take off = takeoff ', 'fire = fire'
  else
    puts 'wrong command'
    puts "type 'help' to see more commands"
  end
  end
end
enterprise = SpaceShip.new("enterprise", 'defiant', 10)
enterprise.user_command

# defiant = SpaceShip.new("defiant", 10)

# defiant.take_off 5
# defiant.fires_on enterprise


