class StringCalculatorWithFuture
  attr_accessor :last_sum

  def initialize
    @last_sum = 0
  end

  def add(numbers)
    raise "only positives please!" if numbers.include?("-")
    @last_sum = calculate(numbers)
    
    # Write a test that proves the next line is missing:
    # When the test fails, you can uncomment this and see if it passes
    #SlowLogger.new.write("got #{@last_sum}")

    @last_sum
  end

  def calculate(numbers)
    return 0 if numbers==""

    return numbers.to_i unless numbers.include? ","

    numbers.split(",")
    .map{|x|x.to_i}
    .inject(:+)
  end
end
