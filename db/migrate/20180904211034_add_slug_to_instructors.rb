class AddSlugToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :slug, :string
    add_index :instructors, :slug, unique: true
  end
end
