class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :salary
      t.string :education
      t.references :user, foreign_key: true
      t.references :cohort, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
