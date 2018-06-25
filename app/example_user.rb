class User
  attr_accessor :first_name, :last_name, :email    # attr_accessorはゲッター・セッターを設定するようなもの

  def initialize(attributes = {})
    @first_name  = attributes[:fist_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@first_name} <#{@email}>"
  end
end
