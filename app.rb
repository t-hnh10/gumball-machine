class Gumball
end

class GumballMachineModel
    attr_reader :count
  def initialize(gumballCount: 0)
    @gumballCount = gumballCount
  end

  def dispense
    # If gumball count greater than 0, return a new gumball object
    # Then reduce count by 1
    if @gumballCount > 0
      @gumballCount -= 1
      return Gumball.new
    else
      return nil
    end
  end

  def refill(count)
    @gumballCount += count
  end

end

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

  def exit
    puts "Have a nice day, goodbye!"
  end

end

class GumballMachineController

  def initialize
    @gumballMachineModel = GumballMachineModel.new
    @gumballMachineView = GumballMachineView.new
  end

  def run
    @gumballMachineView.greeting
    choice = @gumballMachineView.menu

    while choice != "X"
      if choice == "G"
        gumball = @gumballMachineModel.dispense
        if gumball.nil?
          @gumballMachineView.machineEmpty
        else
          @gumballMachineModel.dispense
          @gumballMachineView.getGumball
        end
      end
      if choice == "R"
        numGumballs = @gumballMachineModel.refill(6)
        @gumballMachineView.refill(numGumballs)
      end
      choice = @gumballMachineView.menu
    end
    @gumballMachineView.exit
  end
end

gumballMachineController = GumballMachineController.new
gumballMachineController.run
