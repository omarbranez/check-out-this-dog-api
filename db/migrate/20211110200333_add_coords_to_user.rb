class AddCoordsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :lat, :string
    add_column :users, :lng, :string
  end
end
