class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :details
      t.integer :total_hours
      t.string :slug

      t.timestamps
    end
    add_index :courses, :slug, unique: true
  end
end
