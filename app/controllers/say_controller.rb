# frozen_string_literal: true

class SayController < ApplicationController
  # En el controlador definiremos una instancia para que despues View la utilice para mostrar un resultado al usuario
  def hello
    @time = Time.now
  end

  # Podemos definir las funciones del controlador en una vista y funcionara de la misma manera.
  # Pero no sera una buena pratica si queremos realizar la misma funcion varias veces,
  # es por eso que en controlador definimos una forma general y en la vista manipulamos.
  def goodbye; end
end
