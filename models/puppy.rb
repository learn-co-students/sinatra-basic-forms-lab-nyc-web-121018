class Puppy

  attr_accessor :name, :breed, :age
  # attr_reader :age

  @@all = []

  def self.all
    @@all
  end

  def initialize(params)
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    @@all << self
  end

  # def age=(age)
  #   @age = params[:age]
  # end



end
