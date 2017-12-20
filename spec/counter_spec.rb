require 'spec_helper'
require 'ms_sample_gem/counter'

RSpec.describe Counter do
  let(:counter) { Counter.new }

  it 'returns a normal value' do
    expect(counter.value_for(2)).to eq 2
  end

  it 'returns fizz for 5' do
    expect(counter.value_for(5)).to eq 'fizz'
  end

  it 'returns fizz for a number not dividable through 5 but with a 5 as cifer' do
    expect(counter.value_for(53)).to eq 'fizz'
  end
end
