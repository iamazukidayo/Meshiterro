Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
   get "/homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :post_images, only: [:new, :index, :show, :create, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
 #onlyオプションを使うと、生成されるルーティングを限定する。
 
 
end



