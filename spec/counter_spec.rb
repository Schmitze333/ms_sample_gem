require 'spec_helper'
require 'ms_sample_gem/counter'

RSpec.describe Counter do
  context 'with no buzzwords set' do
    let(:counter) { Counter.new }

    it 'returns a normal value' do
      expect(counter.value_for(5)).to eq 5.to_s
    end
  end

  context 'configured for fizz' do
    let(:counter) { Counter.new(fizz: 3) }

    it 'returns fizz for 3' do
      expect(counter.value_for(3)).to eq 'fizz'
    end

    it 'returns fizz for a number dividable by 3' do
      expect(counter.value_for(9)).to eq 'fizz'
    end

    it 'returns fizz for a number not dividable by 3 but containing a 3 as cifer' do
      expect(counter.value_for(31)).to eq 'fizz'
    end
  end

  context 'cofigured for buzz' do
    let(:counter) { Counter.new(buzz: 5) }

    it 'returns buzz for 5' do
      expect(counter.value_for(5)).to eq 'buzz'
    end

    it 'returns buzz for a number not dividable by 5 but with a 5 as cifer' do
      expect(counter.value_for(56)).to eq 'buzz'
    end
  end

  context 'configured for fizz and buzz' do
    let(:counter) { Counter.new(fizz: 3, buzz: 5) }

    it 'returns fizzbuzz for a number dividable by 3 and 5' do
      expect(counter.value_for(15)).to eq 'fizzbuzz'
    end
  end

  context 'configured for buff' do
    let(:counter) { Counter.new(buff: 7) }

    it 'returns buff for a number dividable by 7' do
      expect(counter.value_for(14)).to eq 'buff'
    end
  end

  context 'configured for fizz and buff' do
    let(:counter) { Counter.new(buff: 7, fizz: 3) }

    it 'returns fizzbuff for a number containing a seven dividable by 3' do
      expect(counter.value_for(72)).to eq 'fizzbuff'
    end
  end
end
