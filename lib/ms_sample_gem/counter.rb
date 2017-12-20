class Counter
  attr_reader :replacers

  def initialize(args = {})
    @replacers = []
    args.sort_by { |k, v| v }.each do |word, number|
      @replacers << Replacer.new(number: number.to_i, word: word.to_s)
    end
  end

  def value_for(number)
    value = ''
    replacers.each do |replacer|
      value << replacer.replace(number)
    end
    value << number.to_s if value.empty?
    value
  end
end

class Replacer
  def initialize(args)
    @number = args[:number]
    @word = args[:word]
  end

  def replace(number)
    if is_dividable?(number) || has_as_cifer?(number)
      @word
    else
      ''
    end
  end

  private

  def is_dividable?(number)
    number % @number == 0
  end

  def has_as_cifer?(number)
    number.to_s.chars.include?(@number.to_s)
  end
end
