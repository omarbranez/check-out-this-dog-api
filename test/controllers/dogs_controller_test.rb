require "test_helper"

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get dogs_url, as: :json
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post dogs_url, params: { dog: { alt_names: @dog.alt_names, breed: @dog.breed, country_code: @dog.country_code, height: @dog.height, life_span: @dog.life_span, origin: @dog.origin, temperament: @dog.temperament, weight: @dog.weight, wikipedia_url: @dog.wikipedia_url } }, as: :json
    end

    assert_response 201
  end

  test "should show dog" do
    get dog_url(@dog), as: :json
    assert_response :success
  end

  test "should update dog" do
    patch dog_url(@dog), params: { dog: { alt_names: @dog.alt_names, breed: @dog.breed, country_code: @dog.country_code, height: @dog.height, life_span: @dog.life_span, origin: @dog.origin, temperament: @dog.temperament, weight: @dog.weight, wikipedia_url: @dog.wikipedia_url } }, as: :json
    assert_response 200
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete dog_url(@dog), as: :json
    end

    assert_response 204
  end
end
