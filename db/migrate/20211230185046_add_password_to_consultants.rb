class AddPasswordToConsultants < ActiveRecord::Migration[6.0]
  def change
    add_column :consultants, :password, :string
  end
end
