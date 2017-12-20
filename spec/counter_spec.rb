require 'spec_helper'
require 'ms_sample_gem/counter'

RSpec.describe Counter do
  let(:counter) { Counter.new }

  it 'returns a normal value' do
    expect(counter.value_for(2)).to eq 2
  end

  it 'returns buzz for 5' do
    expect(counter.value_for(5)).to eq 'buzz'
  end

  it 'returns buzz for a number not dividable through 5 but with a 5 as cifer' do
    expect(counter.value_for(56)).to eq 'buzz'
  end

  it 'returns fizz for 3' do
    expect(counter.value_for(3)).to eq 'fizz'
  end

  it 'returns fizz for a number divisable through 3' do
    expect(counter.value_for(9)).to eq 'fizz'
  end

  it 'returns fizz for a number not dividable by 3 but containing a 3 as cifer' do
    expect(counter.value_for(31)).to eq 'fizz'
  end
end
