class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.string :name
      t.integer :format_id
      t.integer :parent_id
      t.integer :child_id

      t.timestamps
    end
  end
end
