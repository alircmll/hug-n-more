require 'test_helper'

class HuggersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get huggers_index_url
    assert_response :success
  end

  test "should get show" do
    get huggers_show_url
    assert_response :success
  end

end
