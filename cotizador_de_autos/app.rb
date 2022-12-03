datos = ARGV[0]
datos = datos.split('/')
tipo = datos[0]
cilindrada = datos[1]

if tipo == 'camioneta' && Integer(cilindrada) == 2000
  puts 'ci:3'
elsif tipo == 'camioneta'
  puts 'ci:2'
elsif Integer(cilindrada) == 1000
  puts 'ci:1'
elsif Integer(cilindrada) == 1600
  puts 'ci:2'
else
  puts 'ci:2'
end
