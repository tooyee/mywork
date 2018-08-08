Rails.application.routes.draw do
  resources :migrations
  root 'businesses#index', as: 'businesses_index'

  resources :businessunits, :transactionunits, :activeunits
  resources :businessflows, :transactionflows, :activeflows


  resources :resources do
    get 'search', on: :collection
  end

  resources :resourceslines

  resources :businesses do
    resources :businessflows
  end



  resources :actives do
    resources :resourceslines
    get 'clone', on: :member
    get 'copyform', on: :member
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
