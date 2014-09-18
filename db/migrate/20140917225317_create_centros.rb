class CreateCentros < ActiveRecord::Migration
  def change
    create_table :centros do |t|
      t.string :nombre
      t.references :programa, index: true

      t.timestamps
    end
  end
end
