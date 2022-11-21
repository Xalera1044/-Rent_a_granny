class CreateGrannies < ActiveRecord::Migration[7.0]
  def change
    create_table :grannies do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.boolean :alive
      t.text :description
      t.integer :lullaby_skill
      t.integer :storytelling_skill
      t.integer :baking_skill
      t.string :availability
      t.integer :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
