class GumballMachineView

  def greeting
    puts "---Welcome to the Gumball Machine!---"
  end

  def menu
    choice = nil
    while choice != "G" && choice != "R" && choice != "X"
      puts "Press G to get a gumball, R to refill, or X to exit"
      choice = gets.chomp.upcase
    end

    choice
  end

  def getGumball
    puts "---Yum, here's your gumball---"
  end

  def machineEmpty
    puts "---Uh oh, the machine is empty!---"
  end

  def refill(count)
    puts "-------The machine has now been refilled-------"
    puts "There are now #{count} gumballs in the machine."
  end

  def invalidRefill(count)
      puts "Hey, where are my gumballs?"
      puts "#{count} is not right!"
  end

  def refillCount
    puts "How many gumballs do you want to refill?"
    count = gets.to_i    
  end

  def exit
    puts "Have a nice day, goodbye!"
  end

end
