# frozen_string_literal: true

require 'capybara/rspec'
require 'capybara'
require 'selenium-webdriver'
require 'allure-rspec'
require 'rspec'
require 'spec_helper'
require 'rails_helper'
require 'rack/test'

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium_chrome
end

AllureRspec.configure do |config|
  config.results_directory = 'allure-results'
  config.clean_results_directory = true
  config.logging_level = Logger::INFO
end
