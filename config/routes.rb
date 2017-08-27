Rails.application.routes.draw do
  root to: "subscriber#index"

  post 'subscriber' => "subscriber#subscribe" 

  devise_for :admin
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
