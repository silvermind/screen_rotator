# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #  frame sidebar
  # get 'sidebar', to: 'frames#sidebar'
  # get 'home', to: 'frames#home'

  #  master frame
  # root 'frames#main_index'
  resources :screens, only: [:show]

  resources :playlist, only: [] do
    resources :screens, only: [:show], controller: 'playlist_screens'
  end
end
