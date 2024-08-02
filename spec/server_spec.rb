require 'spec_helper'

describe 'Server' do
  it 'deve retornar mensagem padrão' do
    visit '/'
    expect(page).to have_content('Hello world!')
  end

  it 'deve somar dois números' do
    visit '/sum?first=5&second=5'
    expect(page).to have_content('10')
  end

  it 'deve subtrair dois números' do
    visit '/subtract?first=10&second=5'
    expect(page).to have_content('5')
  end

  it 'deve retornar erro ao somar com valor inválido' do
    visit '/sum?first=5&second=invalid'
    expect(page).to have_content('Invalid input: invalid value for Integer(): "invalid"')
  end

  it 'deve retornar erro ao subtrair com valor inválido' do
    visit '/subtract?first=5&second=invalid'
    expect(page).to have_content('Invalid input: invalid value for Integer(): "invalid"')
  end
end
