class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :education
      t.references :user, foreign_key: true
      t.references :cohort, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
