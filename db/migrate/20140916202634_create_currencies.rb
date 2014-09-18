class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :symbol
      t.belongs_to :country, index: true

      t.timestamps
    end
  end
end
