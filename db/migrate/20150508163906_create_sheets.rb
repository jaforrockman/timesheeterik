class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.date :date
      t.string :client_id
      t.string :activity_id
      t.text :omschrijving
      t.string :uur
      t.string :minuten
      t.string :antal
      t.text :opmerking_intern

      t.timestamps null: false
    end
  end
end
