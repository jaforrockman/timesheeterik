class AddClientIdToSheet < ActiveRecord::Migration
  def change
    add_column :sheets, :client_id, :integer
  end
end
