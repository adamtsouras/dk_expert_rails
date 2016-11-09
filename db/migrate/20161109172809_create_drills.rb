class CreateDrills < ActiveRecord::Migration[5.0]
  def change
    create_table :drills do |t|
      t.string :drill_name
      t.string :drill_title
      t.string :drill_category
      t.text :drill_shortdesc
      t.text :drill_longdesc
      t.string :drill_titleimage
      t.string :drill_listimage
      t.string :drill_keyfeatures
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
