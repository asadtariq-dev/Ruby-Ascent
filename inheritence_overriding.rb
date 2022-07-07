# Overriding methods
class Vehicle
  def engine_starts
   "Vehicle engine...."
  end
end

class Car < Vehicle
  def engine_starts

    "Car engine starts..."
  end
end

puts Vehicle.new.engine_starts
puts Car.new.engine_starts

# super powered overriding
class Animal
  def move
    "I can move"
  end
end

class Bird < Animal
  def move
    super + " by flying"
  end
end

class Human < Animal
  def move
    super + " by walking"
  end
end

class Penguin < Bird
  def move
    "I can move by swimming"
  end
end

puts Animal.new.move
puts Bird.new.move
puts Human.new.move
puts Penguin.new.move
