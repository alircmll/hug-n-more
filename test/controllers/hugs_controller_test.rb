require 'test_helper'

class HugsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hugs_index_url
    assert_response :success
  end

  test "should get show" do
    get hugs_show_url
    assert_response :success
  end

end
