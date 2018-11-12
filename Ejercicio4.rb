
puts "sistema de Inventario\n "
option = 0
menu = true
while menu == true
	while option!= 6
		puts "Ingrese [1] para ver productos existentes"
		puts "Ingrese [2] para consultar por un producto"
		puts "Ingrese [3] para ver productos NO registrados en bodega"
		puts "Ingrese [4] para ver filtrar productos bajo sotck indicado"
		puts "Ingrese [5] para Ingresar nuevo producto"
		puts "Ingrese [6] para salir"

		option = gets.chomp
		
		case option.to_i
		when 1
			menu = false
			puts '1'
		when 2
			puts '2'
		when 3
			puts '3'
		when 4
			puts '4'
		when 5
			puts '5'
		when 6
			break
		else
			puts " \n\nLa opcion ingresada no es valida\n "
		end
		break if menu == false
	end

	if menu ==false
		while option!= 'd'
			puts "Ingrese [a] para ver productos existentes"
			puts "Ingrese [b] para consultar por un producto"
			puts "Ingrese [c] para ver productos NO registrados en bodega"
			puts "Ingrese [d] para ver filtrar productos bajo sotck indicado"

			option = gets.chomp
			
			case option.to_s
			when 'a'
				puts '1'
			when 'b'
				puts '2'
			when 'c'
				puts '3'
			when 'd'
				menu = true
				break
			else
				puts " \n\nLa opcion ingresada no es valida\n "
			end
			break if menu==true
		end
	end
end
