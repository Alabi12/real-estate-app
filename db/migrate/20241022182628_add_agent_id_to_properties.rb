class AddAgentIdToProperties < ActiveRecord::Migration[7.1]
  def change
    add_column :properties, :agent_id, :integer
  end
end
