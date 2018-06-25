class User
  attr_accessor :first_name, :last_name, :email    # attr_accessorはゲッター・セッターを設定するようなもの

  def initialize(attributes = {})
    @first_name  = attributes[:fist_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end
  
  def full_name
    "#{@first_name} #{@last_name}"
  end

  def formatted_email
    full_name + " <#{@email}>"
  end
  
  def alphabetical_name
    first_name + ", " + last_name
  end
end
