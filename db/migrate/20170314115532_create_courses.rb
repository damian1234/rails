class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :field
      t.string :name
      t.integer :points

      t.timestamps null: false
    end
  end
end
