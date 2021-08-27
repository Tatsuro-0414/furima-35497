Rails.application.routes.draw do
  devise_for :users
  
  root to: "items#index"
 # root to: "items#index" コントローラー名（items)ietmsのビューがitemsだから
 # root to の意味を忘れない為
  

  resources :items do
  

  resources :purchases, only: [:index,:create]
  
    
   end

end



