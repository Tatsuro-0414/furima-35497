Rails.application.routes.draw do
  devise_for :users
  
  root to: "items#index"

  resources :items do
  # resources :purchases, only: :create
  # 購入機能の際に記述する為、7行目を記述している
    
   end

end



# root to: "items#index" コントローラー名（items)ietmsのビューがitemsだから
# root to の意味を忘れない為