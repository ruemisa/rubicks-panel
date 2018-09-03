class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.references :course, foreign_key: true
      t.string :slug

      t.timestamps
    end
    add_index :cohorts, :slug, unique: true
  end
end
