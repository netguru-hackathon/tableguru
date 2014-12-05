class Setup

  attr_accessor :guests, :chairs, :connections

  def initialize(project)
    @friendships = project.friendships
    @guests = project.guests.to_a.dup
    @chairs = project.chairs.to_a.dup
    @remaining_chairs = project.chairs.to_a.dup
    @connections = {}
  end

  def shuffle
    @guests.each do |guest|
      connections[guest] = grab_a_chair
    end
    self
  end

  def small_shuffle
  end

  def find_guest(id)
    @guests.select { |g| g.id == id }.first
  end

  def points
    @friendships.sum do |f|
      id1, id2 = f.guest1_id, f.guest2_id
      g1 = find_guest id1
      g2 = find_guest id2
      energy(g1,g2,f.strength, f.const)
    end
  end

  def energy(g1, g2, strength, const)
    c1 = connections[g1]
    c2 = connections[g2]
    strength * Math.exp(-c1.distance_to(c2) / const)
  end

  def format
    guests.map do |guest|
      [guest.name, connections[guest]]
    end
  end

  private

  def grab_a_chair
    chair = @remaining_chairs.sample
    @remaining_chairs.delete chair
  end


end
