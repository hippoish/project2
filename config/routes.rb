Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  root  'welcome#index'

  devise_for :users

  resources :neighborhoods do
    resources :carpools
    resources :posts do
      resources :replies
    end
  end

  patch '/neighborhood/:neighborhood_id/carpools/:id' => 'carpools#join_carpool', as: :join_carpool
  delete '/neighborhood/:neighborhood_id/carpools/:id' => 'carpools#leave_carpool', as: :leave_carpool

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
end
