class Micropost < ApplicationRecord
  belongs_to :user,optional: true
  validates :content, length: { minimum:5, maximum: 140},
  presence: true # 空だとエラーにする
end
