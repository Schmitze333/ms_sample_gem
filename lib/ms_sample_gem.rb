require "ms_sample_gem/version"
require "ms_sample_gem/counter.rb"

module MsSampleGem
  def self.set_counter(args)
    @counter = Counter.new(args)
  end

  def self.count(target_value)
    (1..target_value).each do |value|
      puts @counter.value_for(value)
    end
  end
end
