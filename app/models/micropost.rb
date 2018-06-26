class Micropost < ApplicationRecord
  belongs_to :user,optional: true # optionalはbelongs_toの外部キーのnilを許可するというもの
  validates :content, length: { minimum:5, maximum: 140},
  presence: true # 空だとエラーにする
end
