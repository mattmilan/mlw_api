Rails.application.routes.draw do

  # get 'api/v1/spellbooks/#/recipes/#'
  # get 'api/v1/recipes/#/ingredients/#'
  # get 'api/v1/containers/#/ingredients/#'
  # get 'api/v1/ingredients'
  # get 'api/v1/intruders'
  # get 'api/v1/customers'
  # get 'api/v1/witches'
  # get 'api/v1/familiars'

  scope 'api/v1' do 
    resources :spellbooks, only: [:show, :index] do
        resources :recipes, only: [:show, :index]
    end
    resources :recipes, only: [:show, :index] do
      resources :ingredients, only: [:show, :index]
    end
    resources :containers, only: [:show, :index]  do
      resources :ingredients, only: [:show, :index]
    end
    resources :ingredients, only: [:show, :index]
    resources :intruders, only: [:show, :index]
    resources :customers, only: [:show, :index]
    resources :witches, only: [:show, :index]
    resources :familiars, only: [:show, :index]
  end



  # Admin disabled because it's not needed and it's slowing
  # down development
  ##resources :admin do
  # get 'admin', to:'admin#index'
  # scope 'admin' do
  #   resources :spellbooks
  #   resources :recipes
  #   resources :containers
  #   resources :ingredients
  #   resources :intruders
  #   resources :customers
  #   resources :witches
  #   resources :familiars
  # end

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
