class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :name
      t.string :kind
      t.integer :rank

      t.timestamps null: false
    end
  end
end
