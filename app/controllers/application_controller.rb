class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # アクションhelloを定義
  def hello
    render html: "hello, world!"
  end
  def goodbye
    render html: "goodbye, world!"
  end
end
