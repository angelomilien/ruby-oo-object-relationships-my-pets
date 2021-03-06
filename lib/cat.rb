class Cat
  
  attr_reader :name
  attr_accessor :owner, :mood

  @@all_cats = []

  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    @mood = mood
    save
  end
  
  def save
    @@all_cats << self
  end

  def self.all
    @@all_cats
  end
end