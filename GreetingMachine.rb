require 'time'

class GreetingMachine
  def initialize 
    @current_time = Time.now
    @display_time = @current_time.strftime('%H:%M')
  end

  def greeting
  case @current_time.hour
    when 1..11
      puts "Goodmorning, it's #{@display_time}" 
    when 12..14
      puts "Have a nice lunch, It's #{@display_time}" 
    when 15..17
      puts "Good afternoon, Its #{@display_time}" 
    when 17..24
      puts "Goodnight, it's #{@display_time}" 
    end  
  end
end

greeting_machine = GreetingMachine.new 
greeting_machine.greeting

