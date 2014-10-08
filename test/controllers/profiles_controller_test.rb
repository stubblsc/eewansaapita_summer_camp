require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { cellPhone: @profile.cellPhone, cityAddr: @profile.cityAddr, dateOfBirth: @profile.dateOfBirth, email: @profile.email, enrollNum: @profile.enrollNum, firstName: @profile.firstName, gender: @profile.gender, guard1Name: @profile.guard1Name, guard2Name: @profile.guard2Name, guardEmail: @profile.guardEmail, homePhone: @profile.homePhone, lastName: @profile.lastName, midInitial: @profile.midInitial, stateAddr: @profile.stateAddr, streetAddr: @profile.streetAddr, userId: @profile.userId, zipAddr: @profile.zipAddr }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { cellPhone: @profile.cellPhone, cityAddr: @profile.cityAddr, dateOfBirth: @profile.dateOfBirth, email: @profile.email, enrollNum: @profile.enrollNum, firstName: @profile.firstName, gender: @profile.gender, guard1Name: @profile.guard1Name, guard2Name: @profile.guard2Name, guardEmail: @profile.guardEmail, homePhone: @profile.homePhone, lastName: @profile.lastName, midInitial: @profile.midInitial, stateAddr: @profile.stateAddr, streetAddr: @profile.streetAddr, userId: @profile.userId, zipAddr: @profile.zipAddr }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
