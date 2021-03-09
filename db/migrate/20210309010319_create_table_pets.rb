class CreateTablePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.index :id
      t.string :name
      t.integer :age
      t.string :tipo
      t.string :size
      t.string :color
      t.boolean :vaccination
      t.boolean :castration
      t.string :description
      t.boolean :is_adopted
    end
  end
end
