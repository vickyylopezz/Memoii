require_relative './model/alquiler'

fecha_inicio = ARGV[0]
fecha_fin = ARGV[1]
cuit = ARGV[2]
tipo = ARGV[3]
cant_alquiler = ARGV[4]

if fecha_inicio.nil? || fecha_fin.nil? || cuit.nil? || tipo.nil? || cant_alquiler.nil?
  puts 'error: entrada requerida'
  exit 1
end

resultado = Alquiler.new.calcular(cant_alquiler.to_i, tipo, cuit, fecha_inicio.to_i, fecha_fin.to_i)

puts "importe: #{resultado}"
