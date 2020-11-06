
require "pry"

class Owner
    
  attr_reader :name, :species
  attr_accessor

 @@all_owner = []

  def initialize(name, species="human")
    @name = name
    @species = species
    save
  end

  # attributes/method go here!


  # Behaviors/method  go here!

  def cats
    Cat.all.select {|cat| cat.owner == self }
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self }
  end

  def all_pets
     self.dogs + self.cats
  end

  def say_species
    "I am a human."
  end

  def save
   @@all_owner << self
  end

  def self.all
   @@all_owner
  end

  def self.count
   @@all_owner.count
  end

  def self.reset_all
   @@all_owner.clear
  end
  
  def buy_cat(cat)
    cat = Cat.new(cat, self)
  end

  def buy_dog(dog)
    dog = Dog.new(dog, self)
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.all_pets.each do |pet|
       pet.mood = "nervous"
       pet.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end  