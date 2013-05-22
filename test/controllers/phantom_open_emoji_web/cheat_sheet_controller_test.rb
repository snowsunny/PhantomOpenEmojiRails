require 'test_helper'

module PhantomOpenEmojiWeb
  class CheatSheetControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

  end
end
