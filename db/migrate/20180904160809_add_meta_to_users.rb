class AddMetaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :meta, polymorphic: true
  end
end
