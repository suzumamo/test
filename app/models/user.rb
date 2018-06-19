class User < ApplicationRecord
  has_many :microposts
  # 変数のバリデーションに関する文法はvalidates :<変数名>, presence: true or false など
  validates :name, presence: true
  validates :email, presence: true

end
