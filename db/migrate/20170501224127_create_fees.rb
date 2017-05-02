class CreateFees < ActiveRecord::Migration[5.0]
  def change
    create_table :fees do |t|
      t.integer :price
      t.belongs_to :origin, foreign_key: true
      t.belongs_to :nvocc, foreign_key: true

      t.timestamps
    end
  end
end
