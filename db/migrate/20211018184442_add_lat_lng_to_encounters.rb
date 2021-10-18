class AddLatLngToEncounters < ActiveRecord::Migration[6.1]
  def change
    add_column :encounters, :lat, :string
    add_column :encounters, :lng, :string
  end
end
