class CreateRivers < ActiveRecord::Migration
  def change
    create_table :rivers do |t|
      t.string :name
      t.string :country

      t.timestamps null: false
    end
  end
end
