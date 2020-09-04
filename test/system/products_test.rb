require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase

  test "visiting the index" do
    # visitar o index (exercise)
    visit '/'

    # save_and_open_screenshot

    # verificar se existe um h1 com o texto tal (verify)
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test 'create a new product' do
    # fazer o login como um usuario
    login_as users(:george)

    # visitar a pagina de new
    visit "/products/new"

    save_and_open_screenshot

    # preencher o formulario (colocar nome e tagline do product)
    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"

    save_and_open_screenshot

    # enviar o formulario
    click_on 'Create Product'

    save_and_open_screenshot

    # verificar que o index agora tem o card que criamos
    assert_equal root_path, page.current_path
    assert_text "Change your life: Learn to code"
  end
end
