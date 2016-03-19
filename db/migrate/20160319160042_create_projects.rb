class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :url
      t.text :git_repo
      t.text :description
      t.string :start_date
      t.string :end_date
      t.integer :rank

      t.timestamps null: false
    end
  end
end
