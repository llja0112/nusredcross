Rails.application.routes.draw do

  devise_for :users
  root 'static_pages#index'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

  get 'activities/index'
  get 'activities/show'
  get 'activities/new'

end
