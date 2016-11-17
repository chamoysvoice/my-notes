class AddUserIdToNotes < ActiveRecord::Migration[5.0]
  def change
    change_table :notes do |t|
      t.belongs_to :user, index: true
    end
  end
end
