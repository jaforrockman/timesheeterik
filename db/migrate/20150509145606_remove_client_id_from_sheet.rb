class RemoveClientIdFromSheet < ActiveRecord::Migration
  def change
    remove_column :sheets, :client_id, :string
  end
end
