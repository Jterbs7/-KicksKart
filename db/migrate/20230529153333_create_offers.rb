class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.integer :offer_price
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.references :sneaker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
