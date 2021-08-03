Rails.application.routes.draw do
  devise_for :users
  
  root to: "items#index"

end



# root to: "items#index" コントローラー名（items)ietmsのビューがitemsだから
# root to の意味を忘れない為