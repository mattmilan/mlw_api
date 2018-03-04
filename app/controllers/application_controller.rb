class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception  
  before_action :get_nav

  ## Provides a more simplified way for admin to browse API data than
  ## what is provided by pgAdmin, postgres CLI, or other methods.

  ## Most of this data is pre-seeded, and will not be updated by the user
  ## Data that does need to be changed might be stored in a different database

  def get_nav
    ## Tricky way of getting all of our models(tabels), instead of listing them manually
    @menu_items = ActiveRecord::Base.connection.tables

    ## Remove tables used by rails
    @menu_items.delete("schema_migrations")
    @menu_items.delete("ar_internal_metadata")

    ## Generates the following list, to be used in the navigation

    # @menu_items = [:spellbooks,
    #               :recipes,
    #               :containers,
    #               :ingredients,
    #               :familiars,
    #               :witches,
    #               :customers,
    #               :intruders]
  end
end
