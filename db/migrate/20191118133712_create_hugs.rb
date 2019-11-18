class CreateHugs < ActiveRecord::Migration[5.2]
  def change
    create_table :hugs do |t|
      t.text :description
      t.integer :price
      t.string :title
      t.integer :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
