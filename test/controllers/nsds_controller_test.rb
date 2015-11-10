require 'test_helper'

class NsdsControllerTest < ActionController::TestCase
  test "should get nwro1_nsr_001" do
    get :nwro1_nsr_001
    assert_response :success
  end

end
