require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get haml" do
    get :haml
    assert_response :success
  end

end
