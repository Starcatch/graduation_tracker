require 'test_helper'

class GradsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grad = grads(:one)
  end

  test "should get index" do
    get grads_url, as: :json
    assert_response :success
  end

  test "should create grad" do
    assert_difference('Grad.count') do
      post grads_url, params: { grad: { degree: @grad.degree, grad_date: @grad.grad_date, name: @grad.name, school: @grad.school } }, as: :json
    end

    assert_response 201
  end

  test "should show grad" do
    get grad_url(@grad), as: :json
    assert_response :success
  end

  test "should update grad" do
    patch grad_url(@grad), params: { grad: { degree: @grad.degree, grad_date: @grad.grad_date, name: @grad.name, school: @grad.school } }, as: :json
    assert_response 200
  end

  test "should destroy grad" do
    assert_difference('Grad.count', -1) do
      delete grad_url(@grad), as: :json
    end

    assert_response 204
  end
end
