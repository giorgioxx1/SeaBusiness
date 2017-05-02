class CreateMerchandises < ActiveRecord::Migration[5.0]
  def change
    create_table :merchandises do |t|
      t.string :name
      t.integer :price
      t.string :details
      t.belongs_to :origin, foreign_key: true

      t.timestamps
    end
  end
end
