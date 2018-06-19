Rails.application.routes.draw do
  resources :users
  resources :microposts
  resources :memos
  # ルーティングを設定
  #root 'application#hello'# ※ルーティングは二つ以上設定できないよう。
  #root 'application#goodbye'
  # MemosControllerのindexアクションをルートで実行する
  # aa
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
