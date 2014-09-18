class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.string :programa
      t.string :ficha
      t.references :centro

      t.timestamps
    end
  end
end
