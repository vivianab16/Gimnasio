class CreateOtros < ActiveRecord::Migration
  def change
    create_table :otros do |t|
      t.string :nombre
      t.string :apellido
      t.string :doc
      t.references :cargo, index: true

      t.timestamps
    end
  end
end
