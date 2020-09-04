require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "fullname returns the full name of the user capitalized" do
    user = User.new(first_name: 'RAFA', last_name: 'aLONso')
    assert_equal 'Rafa Alonso', user.fullname
  end

  test "Checks that user is only valid with first_name" do
    user = User.new
    assert_equal false, user.valid?

    user.first_name = 'Me'
    assert_equal true, user.valid?
  end
end
