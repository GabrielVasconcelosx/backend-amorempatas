class AlterTipoToAnimalTypeFromPet < ActiveRecord::Migration[5.2]
  def up
    rename_column :pets, :tipo, :animal_type
    change_column :pets, :animal_type, 'integer USING CAST(animal_type AS integer)'
  end

  def down
    change_column :pets, :animal_type, :string
    rename_column :pets, :animal_type, :tipo
  end
end
