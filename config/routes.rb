Rails.application.routes.draw do

  controller :sessions do
  	get 'login' => :new
  	post 'login' => :create
  	delete 'logout' => :destroy
  end

    resources :users
  	resources :posts do
    resources :comments
  root "posts#index"
 end
end