# Using lambda

class Calculator
  addition = lambda {|a,b| return a+b}
  multiplication = lambda {|a,b| return a*b}
  division = lambda {|a,b| return a/b}
  subtraction = lambda {|a,b| return a-b}

  p multiplication.call(2,6)

  def intro
    yield if block_given?
  end
end

Calculator.new.intro { puts "I am a calculator" }
# Note: Yield is not a method, its a keyword

# do-end delimeter for block
addition = lambda do |a, b|
  return a+b
end

#same line
subtraction = lambda do |a,b|; return a-b; end

p addition.call(4,2)
p subtraction.call(4,2)


def a_method
  lambda { return "we just returned from the block" }.call
  return "we just returned from the calling method"
 end

 puts a_method

 def a_method
  Proc.new { return "we just returned from the block" }.call
  return "we just returned from the calling method"
 end

 puts a_method

 # shorter version of lambda ->

 short = ->(a,b) {puts a+b}
 short.call(4,5)

 long = lambda {|c,d| puts c+d}
 long.call(4,5)
