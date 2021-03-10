class AlterSizeTypeToIntengerFromPets < ActiveRecord::Migration[5.2]
  def up
    change_column :pets, :size, 'integer USING CAST(size AS integer)'
  end

  def down
    change_column :pets, :size, :string
  end
end
