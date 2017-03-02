require 'pry'
require_relative 'spaceship'
class Command_Control < SpaceShip
  attr_accessor :spaceship_name, :health
  def initialize(spaceship_name, health)
    @spaceship_name = spaceship_name 
    @health = health
  end
  def user_command
        user_input = gets.chomp
    if user_input == 'takeoff'
      take_off
    elsif user_input == 'fire'
      fires_on (enemy)
    elsif user_input == 'roll'
      roll = ''
      roll = rand(1..6)
      sleep 0.5
      puts "#{roll}"
    elsif user_input == 'help'
      puts '----list of commands----'
      p 'take off = takeoff ', 'fire = fire'
    else
      puts 'wrong command'
      puts "type 'help' to see more commands"
    end
    user_input = gets.chomp
  end
end
enterprise = Command_Control.new("enterprise", 10)
enterprise.user_command
