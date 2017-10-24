class AddDepartamentoRefToDepartamento < ActiveRecord::Migration[5.1]
  def change
    add_reference :departamentos, :departamento, foreign_key: true
  end
end
