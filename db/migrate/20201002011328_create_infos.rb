class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :fish_name  ,null: false
      t.text :text         ,null: false
      t.text :tackle       ,null: false
      t.string :fish_num   ,null: false
      t.string :image      ,null: false
      t.timestamps
    end
  end
end
