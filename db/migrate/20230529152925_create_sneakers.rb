class CreateSneakers < ActiveRecord::Migration[7.0]
  def change
    create_table :sneakers do |t|
      t.string :title
      t.string :brand
      t.string :model
      t.string :description
      t.integer :size
      t.integer :price
      t.integer :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
