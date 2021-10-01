class CreateEncounters < ActiveRecord::Migration[6.1]
  def change
    create_table :encounters do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dog, null: false, foreign_key: true
      t.string :name
      t.string :color
      t.integer :age
      t.string :gender
      t.text :features
      t.text :demeanor
      t.datetime :ping
      t.integer :reactions

      t.timestamps
    end
  end
end
