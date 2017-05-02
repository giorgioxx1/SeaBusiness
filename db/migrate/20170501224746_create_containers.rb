class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.string :name
      t.string :container_type
      t.belongs_to :merchandise, foreign_key: true
      t.belongs_to :bill_of_lading_master, foreign_key: true
      t.belongs_to :bill_of_lading_house, foreign_key: true
      t.belongs_to :shipping_company, foreign_key: true

      t.timestamps
    end
  end
end
