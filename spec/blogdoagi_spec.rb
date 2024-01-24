 #frozen_string_literal: true

RSpec.describe 'Blogdoagi', type: :feature do
  before(:each) do
    visit 'https://blogdoagi.com.br/'
  end

  it 'should load the home page' do
    expect(page).to have_content 'Blog do Agi'
  end

  it 'should submit the contact form' do
    fill_in 'email', with: 'thyagoosk8@gmail.com'
    click_button 'Assinar'
    expect(page).to have_content 'Mensagem enviada com sucesso!'
  end

  it 'should perform a search' do

    click_button 'Pesquisar'
    fill_in 'INPUT', with: 'salário'
    click_button 'Pesquisar'
    expect(page).to have_selector .search-results, wait: 10
    expect(page).to have_content 'da busca por: salário'
  end

end
