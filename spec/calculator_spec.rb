require 'spec_helper'
require 'calculator'

describe 'Calculator' do
  it 'deve somar dois números' do
    calc = Calculator.new
    result = calc.sum(5, 5)
    expect(result).to eq(10)
  end

  it 'deve subtrair dois números' do
    calc = Calculator.new
    result = calc.subtract(10, 5)
    expect(result).to eq(5)
  end
end
