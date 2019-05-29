require_relative "../models/gumball_model.rb"
require_relative "../views/gumball_view"

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
