require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @match = matches(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get :index, :product_id => @product.id
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test "should get new" do
    get :new, :product_id => @product.id
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post :create, :product_id => @product.id, match: { color: @match.color, description: @match.description, link: @match.link, luminosity: @match.luminosity, name: @match.name, overall: @match.overall, price: @match.price, texture: @match.texture }
    end

    assert_redirected_to product_matches_path(@product)
  end

  test "should show match" do
    get :show, id: @match, :product_id => @product.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match, :product_id => @product.id
    assert_response :success
  end

  test "should update match" do
    put :update, id: @match, :product_id => @product.id, match: { color: @match.color, description: @match.description, link: @match.link, luminosity: @match.luminosity, name: @match.name, overall: @match.overall, price: @match.price, texture: @match.texture }
    assert_redirected_to product_matches_path(@product)
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match, :product_id => @product.id
    end

    assert_redirected_to product_matches_path(@product)
  end
end
