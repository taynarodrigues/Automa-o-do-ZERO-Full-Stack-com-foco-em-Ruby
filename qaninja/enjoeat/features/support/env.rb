require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://enjoeat-sp4.herokuapp.com' #trocando o deploy para a sprint sp4 -> parte 4 do curso
    config.default_max_wait_time = 10
end





