Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "items#index"

end

 
# resources :itms do
# resources :itms, only: :create
  
#  end

# root to: "items#index" コントローラー名（items)ietmsのビューがitemsだから
