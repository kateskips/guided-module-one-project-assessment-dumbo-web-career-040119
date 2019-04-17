require_relative '../config/environment'
require 'pry'

cli = CommandLineInterface.new

cli.greet
cli.login_or_signup
cli.main_menu
