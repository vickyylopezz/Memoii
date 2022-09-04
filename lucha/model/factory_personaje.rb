require_relative 'lobo'
require_relative 'humano'
require_relative 'vampiro'

class FactoryPersonaje
  def crear_personaje(personaje)
    if personaje == 'humano'
      Humano.new
    elsif personaje == 'lobo'
      Lobo.new
    elsif personaje == 'vampiro'
      Vampiro.new
    end
  end
end
