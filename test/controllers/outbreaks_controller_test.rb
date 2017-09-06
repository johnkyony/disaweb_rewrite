require 'test_helper'

class OutbreaksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get outbreaks_index_url
    assert_response :success
  end

  test "should get new" do
    get outbreaks_new_url
    assert_response :success
  end

end
