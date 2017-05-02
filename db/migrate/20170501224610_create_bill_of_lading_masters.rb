class CreateBillOfLadingMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_of_lading_masters do |t|
      t.date :date_of_arrival
      t.string :destination
      t.belongs_to :travel, foreign_key: true
      t.belongs_to :shipping_company, foreign_key: true
      t.belongs_to :nvocc, foreign_key: true

      t.timestamps
    end
  end
end
