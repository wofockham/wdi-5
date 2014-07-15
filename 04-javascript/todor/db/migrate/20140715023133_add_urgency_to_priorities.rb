class AddUrgencyToPriorities < ActiveRecord::Migration
  def change
    add_column :priorities, :urgency, :integer, :default => 1
  end
end
