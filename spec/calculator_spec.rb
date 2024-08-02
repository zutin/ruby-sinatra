require 'spec_helper'
require 'calculator'

describe 'Calculator' do
  it 'deve somar dois números' do
    result = Calculator.sum(5, 5)
    expect(result).to eq(10)
  end

  it 'deve subtrair dois números' do
    result = Calculator.subtract(10, 5)
    expect(result).to eq(5)
  end
end
