class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :title
      t.text :description
      t.integer :rank

      t.timestamps null: false
    end
  end
end
