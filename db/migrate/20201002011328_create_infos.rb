class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :fish_name  
      t.text :text         
      t.text :tackle       
      t.string :fish_num   
      t.string :image      
      t.timestamps
    end
  end
end
