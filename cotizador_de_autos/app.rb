datos = ARGV[0]
datos = datos.split('/')
cilindrada = datos[1]

if Integer(cilindrada) == 1000
  puts 'ci:1'
elsif Integer(cilindrada) == 1600
  puts 'ci:1.6'
else
  puts 'ci:2'
end
