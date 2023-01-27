require_relative './app'
require './prompt_user'
#use refactor and clean the main file

def main
  puts "\n👋 Welcome🙋 to School Library App!"
  app = App.new
  PromptUser.new.prompt_user(app)
end

main
