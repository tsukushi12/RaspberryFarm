Rails.application.routes.draw do
  get 'farm/index'
  get 'farm/associate_user'
  post 'farm/associate'
  get 'farm/attach_name'
  post 'farm/save_name'
  get 'farm/show/:id', to: 'farm#show', as: 'farm'
  post 'farm/watering/:id', to: 'farm#watering_que', as: 'watering'
  devise_for :users
  root 'home#index'

  namespace :api, {format: 'json'} do
      get "/farm/get" , :controller => :farms, :action => "get_watering_status"
      post "/farm/post", :controller => :farms, :action => "get_sensor"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
