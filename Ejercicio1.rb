#Crear un método que reciba dos strings, este método creará un archivo index.html y pondrá como párrafo cada uno de los strings recibidos.

def new_index (parrafo1, parrafo2)
	file = File.open('ìndex.html', 'w')
	file.puts "<p>#{parrafo1.to_s}</p>\n"
	file.puts "<p>#{parrafo2.to_s}</p>"
	return nil
end
new_index("parrafo1","parrafo2")

# Crear un método similar al anterior, que además pueda recibir un arreglo. Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.

new_array = ['parrafo1','parrafo2','parrafo3','parrafo4']
def new_index2 (parrafo1, parrafo2, lista)
	file = File.open('ìndex2.html', 'w')
	file.puts " <p>#{parrafo1.to_s}</p>\n"
	file.puts " <p>#{parrafo2.to_s}</p>"
	unless lista.empty?
		file.puts "<ol>\n"
		file.puts lista.each.map {|i| "\t<li>#{i}</li>"}
		file.puts "</ol>"
	end
	return nil
end

new_index2("parrafo1","parrafo2",new_array)

# Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.

def new_index3 (parrafo1, parrafo2, lista, color)
	file = File.open('ìndex3.html', 'w')
	file.puts " <p style = background-color:#{color}>#{parrafo1.to_s}</p>\n"
	file.puts " <p style = background-color:#{color}>#{parrafo2.to_s}</p>"
	unless lista.empty?
		file.puts "<ol>\n"
		file.puts lista.each.map {|i| "\t<li>#{i}</li>"}
		file.puts "</ol>"
	end
	return nil
end

new_index3("parrafo1","parrafo2",new_array, "green")