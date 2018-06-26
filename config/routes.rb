Rails.application.routes.draw do
  # resourcesのルーティングでは「index」「show」「new」「edit」「create」「update」「destroy」の7つのアクションへの
  # ルーティング自動で設定される
  resources :users
  resources :microposts
  resources :memos
  # ルーティングを設定
  #root 'application#hello'# ※ルーティングは二つ以上設定できないよう。
  #root 'application#goodbye'
  # MemosControllerのindexアクションをルートで実行する
  # aa
  # root 'users#index'
  # root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
end
