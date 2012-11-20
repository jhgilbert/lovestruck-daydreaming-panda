require 'test_helper'

class ComplimentsControllerTest < ActionController::TestCase
  setup do
    @compliment = compliments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compliments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compliment" do
    assert_difference('Compliment.count') do
      post :create, compliment: { text: @compliment.text }
    end

    assert_redirected_to compliment_path(assigns(:compliment))
  end

  test "should show compliment" do
    get :show, id: @compliment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compliment
    assert_response :success
  end

  test "should update compliment" do
    put :update, id: @compliment, compliment: { text: @compliment.text }
    assert_redirected_to compliment_path(assigns(:compliment))
  end

  test "should destroy compliment" do
    assert_difference('Compliment.count', -1) do
      delete :destroy, id: @compliment
    end

    assert_redirected_to compliments_path
  end
end
