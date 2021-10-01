class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :temperament
      t.string :life_span
      t.string :alt_names
      t.string :wikipedia_url
      t.string :origin
      t.string :weight
      t.string :country_code
      t.string :height

      t.timestamps
    end
  end
end
