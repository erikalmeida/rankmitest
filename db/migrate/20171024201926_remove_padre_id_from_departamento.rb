class RemovePadreIdFromDepartamento < ActiveRecord::Migration[5.1]
  def change
    remove_column :departamentos, :padreId, :integer
  end
end
