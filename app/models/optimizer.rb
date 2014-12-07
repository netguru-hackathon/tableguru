class Optimizer

  attr_reader :project, :setup

  def initialize(project)
    @project = project
  end

  def optimize!
    raise "Zla liczba krzesel kurwa!" if @project.chairs.count != @project.guests.count

    initial_setups = (1..50).map do
      s = Setup.new(project)
      s.shuffle
    end

    @setup = initial_setups.max_by(&:points)

    return @setup #####

    100.times do
      new_setup = @setup.small_shuffle
      if new_setup.points >= setup.points
        @setup = new_setup
      else
        prob = new_setup.points.to_f / @setup.points.to_f
        if Math.rand < prob
          @setup = new_setup
        end
      end
    end
  end

  def to_json
    if @setup
      @setup.to_json
    else
      fail "Setup not generated!"
    end
  end
end
