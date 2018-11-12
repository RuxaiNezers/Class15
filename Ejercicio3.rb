lines = []
File.open('peliculas.txt', 'r'){ |file| lines = file.read}

def num_palabras(palabras)
	palabra = palabras.split(' ')
	return "el nummero de palabras es: #{palabra.length}"
end

puts num_palabras(lines)

def num_palabra(array_word, palabra)
	new_array = array_word.split(' ')
	numero = new_array.select{|i| /#{palabra}/.match(i)}.to_a 
	return "la palabra '#{palabra}' esta #{numero.length} veces"
end

puts num_palabra(lines,"Galaxia")