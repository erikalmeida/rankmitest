class DepartamentosController < ApplicationController



	def consultar
		departamentos = Departamento.all.order('id asc')
		render json: (departamentos)
	end

	def save
		@dep = Departamento.new(departamento_params)

		 @dep.save!

			idbuscar = @dep.departamento_id

	

			while  idbuscar != nil do 
				
				@padre = Departamento.find_by(id: idbuscar)

				hijos = Departamento.where(departamento_id: @padre.id)

				acum = 0
				cont = 0

				hijos.each do |h|
					acum = acum + h.nota
					cont = cont + 1

				end

				total = acum / cont

				@padre.update(nota: total)

				idbuscar = @padre.departamento_id

			end


		

		render json: @dep

	end  


	def update
		@depup = Departamento.new(departamento_params)
		area = Departamento.find_by(id: @depup.id)
		padreant = area.departamento_id
		area.update(departamento_id: @depup.departamento_id)


			idbuscar = padreant

			update_todo(padreant)

			update_todo(@depup.departamento_id)

	end

	def update_todo(idbuscar)
		while  idbuscar != nil do 
				
				padre = Departamento.find_by(id: idbuscar)

				hijos = Departamento.where(departamento_id: padre.id)

				acum = 0
				cont = 0

				hijos.each do |h|
					acum = acum + h.nota
					cont = cont + 1

				end

				total = acum / cont

				padre.update(nota: total)

				idbuscar = padre.departamento_id

			end
	end


	def show

		result = Hash.new
		root = Departamento.first
		
		hijos = Departamento.where(departamento_id: root.id)
		hash = root.instance_variables.each_with_object({}) { |var, hash| hash[var.to_s.delete("@")] = root.instance_variable_get(var) }
		
		result["id"] = root.id
		result["area"]=root.area
		result["nota"]=root.nota
		result["hijos"] = buscar_hijos(hijos)
		
		


			render json: (result)
	end 


def buscar_hijos(hijos)

		result = Hash.new
	hijos.each do |h|

		
		
		hijos = Departamento.where(departamento_id: h.id)
		
		result["id"] = h.id
		result["area"]=h.area
		result["nota"]=h.nota
		result["hijos"] = buscar_hijos(hijos)
	end
	result
end

	 def departamento_params
       params.require(:departamento).permit(:id,:area, :nota, :departamento_id)
     end
end

