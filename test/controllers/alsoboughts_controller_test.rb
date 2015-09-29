require 'test_helper'

class AlsoboughtsControllerTest < ActionController::TestCase
  setup do
    @alsobought = alsoboughts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alsoboughts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alsobought" do
    assert_difference('Alsobought.count') do
      post :create, alsobought: { product_id: @alsobought.product_id }
    end

    assert_redirected_to alsobought_path(assigns(:alsobought))
  end

  test "should show alsobought" do
    get :show, id: @alsobought
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alsobought
    assert_response :success
  end

  test "should update alsobought" do
    patch :update, id: @alsobought, alsobought: { product_id: @alsobought.product_id }
    assert_redirected_to alsobought_path(assigns(:alsobought))
  end

  test "should destroy alsobought" do
    assert_difference('Alsobought.count', -1) do
      delete :destroy, id: @alsobought
    end

    assert_redirected_to alsoboughts_path
  end
end
