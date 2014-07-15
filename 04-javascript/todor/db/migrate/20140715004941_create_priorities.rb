class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.string :name
      t.string :color, :default => '#ffffff'
      t.integer :user_id
    end
  end
end
