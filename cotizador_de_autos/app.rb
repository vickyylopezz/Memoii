datos = ARGV[0]
datos = datos.split('/')
cilindrada = datos[1]

if Integer(cilindrada) == 1000
  puts 'ci:1'
else
  puts 'ci:1.6'
end
