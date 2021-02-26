# frozen_string_literal: true

# Aqui manipulamos los datos dentro de nuestra db
# Para hacer cambios dentro de nuestra base de datos, debemos aplicar:
# bin/rails db:migrate
class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      # agregamos dos digitos al timestampo y decimales.
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
