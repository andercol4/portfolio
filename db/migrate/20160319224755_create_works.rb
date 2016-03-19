class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :company
      t.string :start_date
      t.string :end_date
      t.text :description

      t.timestamps null: false
    end
  end
end
