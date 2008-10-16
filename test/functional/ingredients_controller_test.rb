require 'test_helper'

class IngredientsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredients)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_ingredient
    assert_difference('Ingredient.count') do
      post :create, :ingredient => { }
    end

    assert_redirected_to ingredient_path(assigns(:ingredient))
  end

  def test_should_show_ingredient
    get :show, :id => ingredients(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => ingredients(:one).id
    assert_response :success
  end

  def test_should_update_ingredient
    put :update, :id => ingredients(:one).id, :ingredient => { }
    assert_redirected_to ingredient_path(assigns(:ingredient))
  end

  def test_should_destroy_ingredient
    assert_difference('Ingredient.count', -1) do
      delete :destroy, :id => ingredients(:one).id
    end

    assert_redirected_to ingredients_path
  end
end
