class CreateTablePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.int :age
      t.string :type
      t.string :size
      t.string :color
      t.tinyint :vaccination
      t.tinyint :castration
      t.string :description
      t.tinyint :is_adopted
    end
  end
end
