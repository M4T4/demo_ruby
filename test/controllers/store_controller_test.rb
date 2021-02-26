# frozen_string_literal: true

require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get store_index_url
    assert_response :success
    assert_select 'nav.side_nav a', minimum: 4 #checamos que existan 4 elementos en la barra de navegacion
    assert_select 'main ul.catalog li', 3 # revisamos elementos de nombre del main
    assert_select 'h2', 'Programming Ruby 1.9'
    assert_select '.price', /\$[,\d]+\.\d\d/ # revisamos atributos de clase (precio del producto) 
  end
end
