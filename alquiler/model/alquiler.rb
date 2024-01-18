class Alquiler
  HORA = 'h'.freeze
  DIA = 'd'.freeze
  KM = 'k'.freeze
  def initialize(tipo_alquiler)
    @tipo_alquiler = if tipo_alquiler == HORA
                       PorHora.new
                     elsif tipo_alquiler == DIA
                       PorDia.new
                     elsif tipo_alquiler == KM
                       PorKm.new
                     end
  end

  def calcular(parametros_alquiler, fecha_alquiler, fecha_devolucion, cuit)
    costo = @tipo_alquiler.calcular(parametros_alquiler, fecha_alquiler, fecha_devolucion)
    costo = aplicar_descuento(costo) if cuit.match(/^26/)
    costo
  end

  def aplicar_descuento(monto)
    monto - monto * 0.05
  end
end

class TipoDeAlquiler
  def aplicar_recargo(monto)
    monto + monto
  end
end
class PorDia < TipoDeAlquiler
  COSTO_DIA = 2000
  def calcular(parametros_alquiler, fecha_alquiler, fecha_devolucion)
    costo = COSTO_DIA * parametros_alquiler

    costo = aplicar_recargo(costo) if fecha_devolucion - fecha_alquiler > parametros_alquiler

    costo
  end
end

class PorHora < TipoDeAlquiler
  COSTO_HORA = 100
  def calcular(parametros_alquiler, _fecha_alquiler, _fecha_devolucion)
    COSTO_HORA * parametros_alquiler
  end

  def aplicar_recargo(monto)
    monto
  end
end

class PorKm < TipoDeAlquiler
  COSTO_KM = 10
  COSTO_BASE_KM = 100
  def calcular(parametros_alquiler, fecha_alquiler, fecha_devolucion)
    costo = COSTO_BASE_KM + COSTO_KM * parametros_alquiler
    costo = aplicar_recargo(costo) if (fecha_devolucion - fecha_alquiler).positive?

    costo
  end
end
