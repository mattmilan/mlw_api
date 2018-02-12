Rails.application.routes.draw do
  # get 'admin/spellbooks'
  # get 'admin/recipes'
  # get 'admin/containers'
  # get 'admin/ingredients'
  # get 'admin/familiars'
  # get 'admin/witchs'
  # get 'admin/customers'
  # get 'admin/intruders'

  scope 'api/v1' do 
    resources :spellbooks, only: [:show] do
      resources :recipes, only: [:show] do
        resources :ingredients, only: [:show] 
      end
    end
    resources :containers, only: [:show]  do
      resources :ingredients, only: [:show] 
    end  
    resources :intruders, only: [:show] 
    resources :customers, only: [:show] 
    resources :witches, only: [:show] 
    resources :familiars, only: [:show] 
  end

  
  #resources :admin do
  get 'admin', to:'admin#index'
  scope 'admin' do 
    resources :spellbooks 
    resources :recipes 
    resources :containers 
    resources :ingredients
    resources :intruders
    resources :customers
    resources :witches
    resources :familiars
  end

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
