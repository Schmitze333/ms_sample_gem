class Counter
  def value_for(number)
    if is_dividable_through_5?(number) || has_5_as_cifer?(number)
      'fizz'
    else
      number
    end
  end

  private

  def is_dividable_through_5?(number)
    number % 5 == 0
  end

  def has_5_as_cifer?(number)
    number.to_s.chars.include?('5')
  end
end
