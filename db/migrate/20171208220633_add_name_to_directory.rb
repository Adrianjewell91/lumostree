class AddNameToDirectory < ActiveRecord::Migration[5.1]
  def change
    add_column :directories, :name, :string, null:false
  end
end
