# frozen_string_literal: true

  # require 'capybara/dsl'

  # RSpec.configure do |config|
  #   config.include Capybara::DSL
  # end

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
    #expect(page).to have_content 'Mensagem enviada com sucesso!'
  end
end
