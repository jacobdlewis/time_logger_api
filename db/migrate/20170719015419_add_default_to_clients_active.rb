class AddDefaultToClientsActive < ActiveRecord::Migration[5.1]

  def up
    change_column :clients, :active, :boolean, default: true
  end

  def down
    change_column :clients, :active, :boolean, default: nil
  end

end
