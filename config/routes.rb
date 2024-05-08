Rails.application.routes.draw do
  #get 'post_images/new'
  #get 'post_images/index'
  #get 'post_images/show'
  #get 'users/about' => 'users#about', as:'about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :post_images, only: [:new, :index, :show, :create,]
 #onlyオプションを使うと、生成されるルーティングを限定する。
 root to: "homes#top"
 get 'homes/about' => 'homes#about', as:'about'
end


