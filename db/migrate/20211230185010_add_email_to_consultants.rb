class AddEmailToConsultants < ActiveRecord::Migration[6.0]
  def change
    add_column :consultants, :email, :string
  end
end
