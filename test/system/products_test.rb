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
end
