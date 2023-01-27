require './menu_display'
require './options'

class prompt_user
    def prompt_user(app)
      MenuDisplay.new.menu

        choice = gets.chomp.to_i
        choice == 7 ? quit_app : option_case(choice,app)
      
        prompt_user(app)
    end
end
