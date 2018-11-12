lines = []
File.open('starwars.txt', 'r'){|file| lines= file.readlines }
puts lines.count