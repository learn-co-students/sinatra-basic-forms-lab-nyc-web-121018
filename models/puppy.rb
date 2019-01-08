class Puppy

# Puppy class can create a new instance of the puppy class
 # Puppy class can read a puppy name
 # Puppy class can read a puppy breed
 # Puppy class can read a puppy age (puppy#age)
 # Puppy class can change puppy age (puppy#age=)
# Puppy class can change puppy name
  attr_accessor :age, :name, :breed

  @@all = []

  def initialize(name, breed, age)
    @name = name
    @age = age
    @breed = breed

    @@all << self
  end

  def self.all
    @@all
  end

end
