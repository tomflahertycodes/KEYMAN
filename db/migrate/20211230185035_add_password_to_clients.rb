class AddPasswordToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :password, :string
  end
end
