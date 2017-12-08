class CreateDirectories < ActiveRecord::Migration[5.1]
  def change
    create_table :directories do |t|
      t.string :directory, null:false 
      t.timestamps  
    end
    
    add_index :directories, :directory
  end
end
