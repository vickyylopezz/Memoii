class Vehiculo
  def coeficiente_impositivo(cilindrada)
    (@base * cilindrada) / 1_000_000
  end

  def valor_mercado(_kilometraje, _cilindrada)
    raise 'Subclass must implement'
  end
end
