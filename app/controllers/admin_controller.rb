class AdminController < ApplicationController
  def index
    #show a menu option for every item
    @menu_items = [:spellbooks, 
                  :recipes, 
                  :containers, 
                  :ingredients, 
                  :familiars, 
                  :witches, 
                  :customers,
                  :intruders]
  end
  # def show
  # end
  def spellbooks
    @spell_books = SpellBook.all
  end

  def recipes
    @recipes = Recipe.all
  end

  def containers

  end

  def ingredients
  end

  def familiars
  end

  def witches
  end

  def customers
  end

  def intruders
  end
end
