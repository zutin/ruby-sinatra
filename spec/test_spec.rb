require 'spec_helper'

describe 'Server' do
  it 'deve retornar mensagem padrão' do
    visit '/'
    expect(page).to have_content('Hello world!')
  end

  it 'deve somar dois números' do
    visit '/sum?a=5&b=5'
    expect(page).to have_content('10')
  end

  it 'deve subtrair dois números' do
    visit '/subtract?a=10&b=5'
    expect(page).to have_content('5')
  end
end
