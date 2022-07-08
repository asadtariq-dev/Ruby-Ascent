# Getter/ Setter methods

class Employee
  def initialize(name, salary)
    @name = name
    @salary = salary
  end
  # Getter Method
  def salary
    @salary
  end
  # Setter Method
  def salary=(new_salary)
    @salary = new_salary
  end
end

puts Employee.new("Ahmad", 60000).salary  #60000
puts Employee.new("Ahmad", 60000).salary=("75000") #75000

# attr_accessors
class Student
  #attr_read
  attr_reader :name
  #attr_writer
  attr_writer :age
  #atr_accessor
  attr_accessor :grade
  def initialize(name, age, grade)
    @name = name
    @age = age
    @grade = grade
  end
end

puts Student.new("Hammad", 21, "A").name
puts Student.new("Hammad", 21, "B").age = 22
puts Student.new("Hammad", 22, "A").grade
