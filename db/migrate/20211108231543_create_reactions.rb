class CreateReactions < ActiveRecord::Migration[6.1]
  def change
    create_table :reactions do |t|
      t.integer :user_id
      t.integer :encounter_id
      t.integer :rating
      t.text :content

      t.timestamps
    end
  end
end
