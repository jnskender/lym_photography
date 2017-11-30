require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get faq" do
    get static_pages_faq_url
    assert_response :success
  end

  test "should get pricing" do
    get static_pages_pricing_url
    assert_response :success
  end

  test "should get settings" do
    get static_pages_settings_url
    assert_response :success
  end

end
