Rails.application.routes.draw do
root "posts#index"
  controller :sessions do
  	get 'login' => :new
  	post 'login' => :create
  	delete 'logout' => :destroy
  end
    resources :users
  	resources :posts do
    resources :comments
 end
end