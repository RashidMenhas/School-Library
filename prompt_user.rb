require './menu_display'
require './options'

class PromptUser
  def prompt_user(app)
    MenuDisplay.new.menu

    choice = gets.chomp.to_i
    choice == 7 ? app.quit_app : Options.new.option_case(choice, app)

    prompt_user(app)
  end
end
