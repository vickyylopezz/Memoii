require_relative 'lobo'
require_relative 'humano'

class FactoryPersonaje
  def crear_personaje(personaje)
    if personaje == 'humano'
      Humano.new
    elsif personaje == 'lobo'
      Lobo.new
    end
  end
end
