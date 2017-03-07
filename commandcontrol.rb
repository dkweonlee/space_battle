require 'pry'
require_relative 'spaceship'
require_relative 'dice'
class Command_Control 
  attr_accessor :spaceship_name, :health, :roll
  def initialize(spaceship_name, health)
    @spaceship_name = spaceship_name
    @health = health
    @roll = roll
  end
  def user_command
    user_input = gets.chomp
    case user_input
      when 'off'
        SpaceShip.new("enterprise", 10).take_off
      when 'fire'
        SpaceShip.new("enterprise", 10).fires_on defiant
      when 'roll'
        @roll = Dice.new.roll_dice
        puts @roll
      when 'help'
        puts '----list of commands----'
        p 'off = takeoff the spaceship', 'fire = fire upon enemy', 'roll = roll dice','ctrl + c = exit'
      else
        puts 'wrong command'
        puts "type 'help' to see more commands"
    end
    user_command
  end
end
enterprise = Command_Control.new("enterprise", 10)
enterprise.user_command

# fires_on how can i make the enemey take a hit???
