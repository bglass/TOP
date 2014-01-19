class CreateTTypes < ActiveRecord::Migration
  def change
    create_table :t_types do |t|
      t.string :name
      t.string :fields
      t.integer :priority
      t.string :children
      t.string :relations
      t.string :extras

      t.timestamps
    end
  end
end
