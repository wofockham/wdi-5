class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.date :duedate
      t.boolean :completed, :default => false
      t.integer :user_id
      t.integer :priority_id
      t.timestamps
    end
  end
end
