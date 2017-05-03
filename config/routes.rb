Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }

  # search
  resources :jobs do
    # star & unstar
    member do
      post :star
      post :unstar
    end

    collection do
      get :search
    end

    resources :resumes
  end


  namespace :account do
    # view starred jobs
    resources :jobs
    # view job application history
    resources :resumes
  end

  # fields
  get "fields/index"

  # jobs
  resources :jobs do
    resources :resumes
  end

  # admin
  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end

      resources :resumes
    end

    resources :companies
  end

  # landing page
  resources :welcome do

  end

  root 'welcome#index'

end
