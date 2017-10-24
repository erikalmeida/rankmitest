class DepartamentosController < ApplicationController


	def consultar
		departamentos = Departamento.all.order('id asc')
		render json: (departamentos)

	end
end
