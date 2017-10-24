class CreateDepartamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :departamentos do |t|
      t.integer :padreId
      t.string :area
      t.float :nota

      t.timestamps
    end
  end
end
