require 'test_helper'

class InterestonlymortgagecalculatorsControllerTest < ActionController::TestCase
  setup do
    @interestonlymortgagecalculator = interestonlymortgagecalculators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interestonlymortgagecalculators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interestonlymortgagecalculator" do
    assert_difference('Interestonlymortgagecalculator.count') do
      post :create, interestonlymortgagecalculator: { amount: @interestonlymortgagecalculator.amount, rate: @interestonlymortgagecalculator.rate, stress: @interestonlymortgagecalculator.stress }
    end

    assert_redirected_to interestonlymortgagecalculator_path(assigns(:interestonlymortgagecalculator))
  end

  test "should show interestonlymortgagecalculator" do
    get :show, id: @interestonlymortgagecalculator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interestonlymortgagecalculator
    assert_response :success
  end

  test "should update interestonlymortgagecalculator" do
    put :update, id: @interestonlymortgagecalculator, interestonlymortgagecalculator: { amount: @interestonlymortgagecalculator.amount, rate: @interestonlymortgagecalculator.rate, stress: @interestonlymortgagecalculator.stress }
    assert_redirected_to interestonlymortgagecalculator_path(assigns(:interestonlymortgagecalculator))
  end

  test "should destroy interestonlymortgagecalculator" do
    assert_difference('Interestonlymortgagecalculator.count', -1) do
      delete :destroy, id: @interestonlymortgagecalculator
    end

    assert_redirected_to interestonlymortgagecalculators_path
  end
end
