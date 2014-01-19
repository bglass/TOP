class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :format_id
      t.string :content

      t.timestamps
    end
  end
end
