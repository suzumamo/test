class AddIndexToUsers < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email, unique: true # uniqueで一意性を持たせる
  end
end
