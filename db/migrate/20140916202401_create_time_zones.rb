class CreateTimeZones < ActiveRecord::Migration
  def change
    create_table :time_zones do |t|
      t.string :name
      t.integer :offset
      t.belongs_to :country, index: true

      t.timestamps
    end
  end
end
