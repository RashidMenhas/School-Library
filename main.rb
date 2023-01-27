require_relative './app'
require './prompt_user'

def main
  puts "\n👋 Welcome🙋 to School Library App!"
  app = App.new
  prompt_user.new.prompt_user(app)
end

main
