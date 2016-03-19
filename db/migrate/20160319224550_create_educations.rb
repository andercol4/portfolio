class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :name
      t.text :description
      t.string :start_date
      t.string :end_date

      t.timestamps null: false
    end
  end
end
