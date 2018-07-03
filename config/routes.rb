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
  # asオプションで好きなパス名には変更できる 例： ~, to: 'hoge#hoge', as: 'moge'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  # get '/signup', to: 'static_pages#signup', as: 'signup_path'
  get '/signup', to: 'users#new'
end
