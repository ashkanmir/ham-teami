class AddCityExpWorkToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :city, :string
    add_column :users, :exp, :string
    add_column :users, :work, :string
  end
end
