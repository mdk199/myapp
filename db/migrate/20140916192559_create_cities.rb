class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :population
      t.decimal :area
      t.decimal :literacy
      t.belongs_to :state, index: true

      t.timestamps
    end
  end
end
