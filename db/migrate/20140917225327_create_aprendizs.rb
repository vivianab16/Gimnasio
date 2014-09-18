class CreateAprendizs < ActiveRecord::Migration
  def change
    create_table :aprendizs do |t|
      t.string :nombre
      t.string :apellido
      t.string :doc
      t.references :centro, index: true
      t.references :ficha, index: true

      t.timestamps
    end
  end
end
