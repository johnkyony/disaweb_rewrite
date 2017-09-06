Rails.application.routes.draw do
  resources :outbreaks , expect: [:update , :edit , :destroy]
  root 'outbreaks#index'
end
