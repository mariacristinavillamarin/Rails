class CreateRegistroDeResiduos < ActiveRecord::Migration[5.2]
  def change
    create_table :registro_de_residuos do |t|
      t.date :fecha
      t.string :tipo
      t.integer :contenedor
      t.integer :telefono

      t.timestamps
    end
  end
end
