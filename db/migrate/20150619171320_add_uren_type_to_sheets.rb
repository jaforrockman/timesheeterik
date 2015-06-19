class AddUrenTypeToSheets < ActiveRecord::Migration
  def change
    add_column :sheets, :uren_type, :string
  end
end
