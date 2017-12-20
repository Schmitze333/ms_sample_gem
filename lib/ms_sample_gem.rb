require "ms_sample_gem/version"
require "ms_sample_gem/counter.rb"

module MsSampleGem
  def self.count(target_value)
    counter = Counter.new
    (1..target_value).each do |value|
      puts value
    end
  end
end
