require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://enjoeat-sp2.herokuapp.com' #trocando o deploy para a sprint sp2 -> parte 2 do curso
    config.default_max_wait_time = 10
end

