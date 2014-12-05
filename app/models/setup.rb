class Setup

  attr_accessor :guests, :chairs

  def initialize(project)
    @friendships = project.friendships
    @guests = project.guests.dup
    @chairs = project.chairs.dup
    @remaining_chairs = project.chairs
  end

  def shuffle
    @guests.each do |guest|
      guest.chair = grab_a_chair
    end
    self
  end

  def small_shuffle
  end

  def points
    @friendships.sum do |f|
      id1, id2 = f.guest1_id, f.guest2_id
      g1 = @guests.find { |g| g.id == id1 }
      g2 = @guests.find { |g| g.id == id2 }
      Friendship.energy(g1,g2,f.strength)
    end
  end

  private

  def grab_a_chair
    chair = @remaining_chairs.sample
    @remaining_chairs.delete chair
  end


end
