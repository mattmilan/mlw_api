class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception  
  before_action :get_nav

  def get_nav
    @menu_items = [:spellbooks, 
                  :recipes, 
                  :containers, 
                  :ingredients, 
                  :familiars, 
                  :witches, 
                  :customers,
                  :intruders]
  end
end
