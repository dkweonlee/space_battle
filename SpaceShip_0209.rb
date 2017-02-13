class SpaceShip
  user_input = gets.chomp
  attr_accessor :name, :health
  def initialize(name, health)
    @name = name 
    @health = health
  end

  def fires_on target
    target.takes_a_hit
  end  

  def takes_a_hit
  @health = @health - 1
  puts @name+" health = " + @health.to_s
  end

  def take_off count_down
    until count_down <= 0
      puts "#{count_down}"
      sleep 1
      count_down -= 1
    end
    puts @name + " blasting off!!!"
  end
  def user_command
  if user_input == 'take off'
    
  end

  end
end
enterprise = SpaceShip.new("enterprise", 10)

# defiant = SpaceShip.new("defiant", 10)
enterprise.take_off 5
# defiant.take_off 5
# defiant.fires_on enterprise


