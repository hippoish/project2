class CreateCarpools < ActiveRecord::Migration
  def change
    create_table :carpools do |t|
      t.string :name
      t.references :neighborhood, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
