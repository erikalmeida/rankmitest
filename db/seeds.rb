# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Departamento.create([{area: "Gerencia General", nota:0},
	{area: "Gerencia Finanzas", nota:0,departamento_id:1},
	{area: "Gerencia Operaciones", nota:0,departamento_id:1},
	{area: "Gerencia Tecnología", nota:0,departamento_id:1},
	{area: "Contabilidad", nota:2,departamento_id:2},
	{area: "Analisis", nota:2,departamento_id:3},
	{area: "Consultoria", nota:2,departamento_id:3},
	{area: "Desarrollo", nota:2,departamento_id:4},
	{area: "QA", nota:2,departamento_id:4}])