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
