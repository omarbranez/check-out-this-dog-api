class AddShowToEncounters < ActiveRecord::Migration[6.1]
  def change
    add_column :encounters, :show, :boolean
  end
end
