class Cat
  
  attr_reader :name
  attr_accessor :owner, :mood

  @@all_cats = []

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
    @@all_cats << self
  end

  def self.all
    @@all_cats
  end
end