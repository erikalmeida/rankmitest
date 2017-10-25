# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Departamento.create([
	{area: "root", nota:0},
	{area: "Gerencia General", nota:2,departamento_id:1},
	{area: "Gerencia Finanzas", nota:2,departamento_id:2},
	{area: "Gerencia Operaciones", nota:2,departamento_id:2},
	{area: "Gerencia Tecnología", nota:2,departamento_id:2},
	{area: "Contabilidad", nota:2,departamento_id:3},
	{area: "Analisis", nota:2,departamento_id:4},
	{area: "Consultoria", nota:2,departamento_id:4},
	{area: "Desarrollo", nota:2,departamento_id:5},
	{area: "QA", nota:2,departamento_id:5}])