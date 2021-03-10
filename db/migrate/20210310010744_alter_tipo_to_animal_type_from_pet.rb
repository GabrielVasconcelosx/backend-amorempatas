class AlterTipoToAnimalTypeFromPet < ActiveRecord::Migration[5.2]
  def up
    rename_column :pets, :tipo, :animal_type
  end

  def down
    rename_column :pets, :animal_type, :tipo
  end
end
