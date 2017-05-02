class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
      t.belongs_to :origin, foreign_key: true
      t.belongs_to :ship, foreign_key: true

      t.timestamps
    end
  end
end
