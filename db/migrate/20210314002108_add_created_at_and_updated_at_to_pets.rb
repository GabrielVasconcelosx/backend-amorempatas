class AddCreatedAtAndUpdatedAtToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :created_at, :timestamp, :default now
    add_column :pets, :updated_at, :timestamp, :default now
  end
end
