class Cow
  attr_accessor :name
  @@cows = []

  def initialize(name)
    @name = name
  end

  def save
    @@cows << self
  end

  def destroy
    @@cows.delete(self)
  end

  def self.all(limit = 20)
    @@cows
  end

  def self.find_by_name(name)
    @@cows.find do |cow|
      cow.name == name
    end
  end

  def self.spawn(limit = 10)
    limit.times do |time|
      new("Cowspawn #{time}").save
    end
  end

end

Cow.spawn
