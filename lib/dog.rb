class Dog
  
  attr_reader :name
  attr_accessor :owner, :mood

  @@all_dogs = []

  def initialize(name, owner, mood="nervous")
    # attributes
    @name = name
    @owner = owner
    @mood = mood

    #methods
    save
  end

  # attributes go here!

  # functionalities/behaviors go here!
  
  def save
    @@all_dogs << self
  end

  def self.all
    @@all_dogs
  end
end