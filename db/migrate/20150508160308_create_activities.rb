class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :short_code

      t.timestamps null: false
    end
  end
end
