class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :fish_name  
      t.text :text         
      t.text :tackle       
      t.string :bait   
      t.string :image      
      t.integer :user_id           ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
