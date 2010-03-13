require 'test_helper'

class CallsControllerTest < ActionController::TestCase

  test "should create call" do
    Call.any_instance.expects(:save).returns(true)
    post :create, :call => { }
    assert_response :redirect
  end

  test "should handle failure to create call" do
    Call.any_instance.expects(:save).returns(false)
    post :create, :call => { }
    assert_template "new"
  end

  test "should destroy call" do
    Call.any_instance.expects(:destroy).returns(true)
    delete :destroy, :id => calls(:one).to_param
    assert_not_nil flash[:notice]    
    assert_response :redirect
  end

  test "should handle failure to destroy call" do
    Call.any_instance.expects(:destroy).returns(false)    
    delete :destroy, :id => calls(:one).to_param
    assert_not_nil flash[:error]
    assert_response :redirect
  end

  test "should get edit for call" do
    get :edit, :id => calls(:one).to_param
    assert_response :success
  end

  test "should get index for calls" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calls)
  end

  test "should get new for call" do
    get :new
    assert_response :success
  end

  test "should get show for call" do
    get :show, :id => calls(:one).to_param
    assert_response :success
  end

  test "should update call" do
    Call.any_instance.expects(:save).returns(true)
    put :update, :id => calls(:one).to_param, :call => { }
    assert_response :redirect
  end

  test "should handle failure to update call" do
    Call.any_instance.expects(:save).returns(false)
    put :update, :id => calls(:one).to_param, :call => { }
    assert_template "edit"
  end

end