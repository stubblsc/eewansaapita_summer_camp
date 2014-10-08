require 'test_helper'

class YearlyInfosControllerTest < ActionController::TestCase
  setup do
    @yearly_info = yearly_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yearly_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yearly_info" do
    assert_difference('YearlyInfo.count') do
      post :create, yearly_info: { comments: @yearly_info.comments, essay: @yearly_info.essay, role: @yearly_info.role, userId: @yearly_info.userId, year: @yearly_info.year }
    end

    assert_redirected_to yearly_info_path(assigns(:yearly_info))
  end

  test "should show yearly_info" do
    get :show, id: @yearly_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yearly_info
    assert_response :success
  end

  test "should update yearly_info" do
    patch :update, id: @yearly_info, yearly_info: { comments: @yearly_info.comments, essay: @yearly_info.essay, role: @yearly_info.role, userId: @yearly_info.userId, year: @yearly_info.year }
    assert_redirected_to yearly_info_path(assigns(:yearly_info))
  end

  test "should destroy yearly_info" do
    assert_difference('YearlyInfo.count', -1) do
      delete :destroy, id: @yearly_info
    end

    assert_redirected_to yearly_infos_path
  end
end
